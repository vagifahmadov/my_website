from django.shortcuts import render


# Create your views here.
def home_page(r):
    return render(r, "index.html")


def about_page(r):
    return render(r, "about.html")


def gallery_page(r):
    return render(r, "gallery.html")


def animations_page(r):
    return render(r, "animations.html")


def contact_page(r):
    return render(r, "contact.html")
