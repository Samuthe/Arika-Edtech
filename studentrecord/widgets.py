from django import forms
from django_ckeditor_5.widgets import CKEditor5Widget

class CustomCKEditorWidget(CKEditor5Widget):
    def use_required_attribute(self, *args):
        return False  # Prevents losing data due to validation
