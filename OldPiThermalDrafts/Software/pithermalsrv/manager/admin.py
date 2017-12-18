from django.contrib import admin

from .models import ControlNode, SensorNode, TargetSetting

# Register your models here.
class ControlNodeAdmin(admin.ModelAdmin):
	class Meta:
		model = ControlNode

class SensorNodeAdmin(admin.ModelAdmin):
	class Meta:
		model = SensorNode

admin.site.register(ControlNode, ControlNodeAdmin)
admin.site.register(SensorNode, SensorNodeAdmin)
admin.site.register(TargetSetting)