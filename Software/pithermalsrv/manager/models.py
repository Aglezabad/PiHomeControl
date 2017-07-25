from django.db import models

# Create your models here.
class DHT11SensorValues(models.Model):
    temperature = models.PositiveSmallIntegerField(default=0)
    humidity = models.PositiveSmallIntegerField(default=0)
    valid = models.BooleanField(default=False)

class TargetSettings(models.Model):
    temperature = models.PositiveSmallIntegerField(default=0)
    from_time = models.TimeField()
    until_time = models.TimeField()
    priority = models.PositiveSmallIntegerField(default=0)
    
class Node(models.Model):
    mac_address = models.CharField(max_length=17)
    location = models.CharField(max_length=255)
    last_query = models.DateTimeField('Last date queried')
    sensor_values = models.ForeignKey(DHT11SensorValues, on_delete=models.CASCADE)
    target = models.ForeignKey(TargetSettings, on_delete=models.CASCADE)

    class Meta:
        abstract = True

class ControlNode(Node):
    relay_active = models.BooleanField(default=False)

class SensorNode(Node):
	lowBattery = models.BooleanField(default=False)
