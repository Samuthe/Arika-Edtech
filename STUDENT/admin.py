from django.contrib import admin
from .models import Books
from datetime import datetime

class BooksAdmin(admin.ModelAdmin):
    list_display = ('book_name', 'author', 'isbn', 'publication_year')
    search_fields = ('book_name', 'author', 'isbn')
    list_filter = ('publication_year', 'program')

    def save_model(self, request, obj, form, change):
        """Ensure publication_year is saved as an integer."""
        if isinstance(obj.publication_year, datetime):
            obj.publication_year = obj.publication_year.year  # Extract the year
        super().save_model(request, obj, form, change)


admin.site.register(Books, BooksAdmin)


