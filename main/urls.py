from tkinter.font import names

from django.urls import path
from .views import home_page, about_page, gallery_page, animations_page, contact_page

urlpatterns = [
    path("", home_page, name="home"),
    path("about", about_page, name="about"),
    path("gallery", gallery_page, name="gallery"),
    path("animations", animations_page, name="animations"),
    path("contact", contact_page, name="contact"),
]
