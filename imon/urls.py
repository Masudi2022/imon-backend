from django.urls import path
from .views import WebsiteStatusView

urlpatterns = [
    path("status/", WebsiteStatusView.as_view(), name="website-status"),
]
