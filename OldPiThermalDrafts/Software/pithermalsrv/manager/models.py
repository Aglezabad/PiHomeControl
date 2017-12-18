from django.db import models

# Create your models here.

class TargetSetting(models.Model):
    TEMP_UNIT_CHOICES = (
        ('ºF', 'Fahrenheit'),
        ('ºC', 'Celsius')
    )
    temperature = models.PositiveSmallIntegerField('Temperature', default=0)
    temp_unit = models.CharField('Temperature unit', max_length=2, choices=TEMP_UNIT_CHOICES, default='ºC')
    from_time = models.TimeField('From')
    until_time = models.TimeField('Until')
    priority = models.PositiveSmallIntegerField(default=0)
    
    def __str__(self):
        return str(self.temperature) + self.temp_unit + ' / ' + \
            self.from_time.strftime('%H:%M') + ' - ' + \
            self.until_time.strftime('%H:%M') + ' / ' + \
            str(self.priority)

class Node(models.Model):
    mac_address = models.CharField(max_length=17)
    location = models.CharField(max_length=255)
    last_query = models.DateTimeField('Last date queried', auto_now_add=True, editable=False)
    temperature = models.PositiveSmallIntegerField(default=0, editable=False)
    humidity = models.PositiveSmallIntegerField(default=0, editable=False)
    valid = models.BooleanField(default=False, editable=False)
    target = models.ForeignKey(TargetSetting, on_delete=models.CASCADE)

    class Meta:
        abstract = True

    def __str__(self):
        return self.mac_address + ' - ' + self.location

class ControlNode(Node):
    pass
    relay_active = models.BooleanField(default=False, editable=False)

class SensorNode(Node):
    pass
    lowBattery = models.BooleanField(default=False, editable=False)
