import json
from django.shortcuts import render
from django.core.serializers.json import DjangoJSONEncoder
from .models import *


# Create your views here.
def home_page(r):
    header = HeaderTable.objects.all().values()
    data = {
        'header': json.loads(json.dumps(list(header), cls=DjangoJSONEncoder))
    }
    print(f'--------------------\n\n\n\n{data}\n\n\n\n--------------------')
    return render(r, "index.html", data)


def about_page(r):
    return render(r, "about.html")


def gallery_page(r):
    return render(r, "gallery.html")


def animations_page(r):
    return render(r, "animations.html")


def contact_page(r):
    return render(r, "contact.html")
