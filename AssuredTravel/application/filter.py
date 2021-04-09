import django_filters
from application.models import Tour

class TourFilter(django_filters.FilterSet):
    class Meta:
        model = Tour
        fields = ['location']