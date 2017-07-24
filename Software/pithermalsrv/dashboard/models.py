from django.db import models

# Create your models here.
class Node(models.Model):
    location = models.CharField(max_length=255)
    last_query = models.DateTimeField('Last date queried')
    sensor_values = models.ForeignKey(DHT11SensorValues, on_delete=models.CASCADE)

    class Meta:
        abstract = True

class ControlNode(Node):
    relay_active = models.BooleanField(default=false)

class SensorNode(Node):

    
class DHT11SensorValues(models.Model):
    temperature = models.DecimalField(default=0)
    humidity = models.DecimalField(default=0)
    valid = models.BooleanField(default=False)
