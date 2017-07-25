from django.db import models

# Create your models here.

class TargetSetting(models.Model):
    temperature = models.PositiveSmallIntegerField(default=0)
    from_time = models.TimeField('From')
    until_time = models.TimeField('Until')
    priority = models.PositiveSmallIntegerField(default=0)
    
    def __str__(self):
        return str(self.temperature) + ' / ' + \
            self.from_time.strftime('%H:%M') + ' - ' + \
            self.until_time.strftime('%H:%M') + ' / ' + \
            str(self.priority)

class Node(models.Model):
    mac_address = models.CharField(max_length=17)
    location = models.CharField(max_length=255)
    last_query = models.DateTimeField('Last date queried', editable=False)
    temperature = models.PositiveSmallIntegerField(default=0, editable=False)
    humidity = models.PositiveSmallIntegerField(default=0, editable=False)
    valid = models.BooleanField(default=False, editable=False)
    target = models.ForeignKey(TargetSetting, on_delete=models.CASCADE)

    class Meta:
        abstract = True

class ControlNode(Node):
    pass
    relay_active = models.BooleanField(default=False, editable=False)

class SensorNode(Node):
    pass
    lowBattery = models.BooleanField(default=False, editable=False)
