from kivy.app import App
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.button import Button
from kivy.uix.label import Label
from kivy.uix.image import Image
from kivy.core.window import Window
import subprocess  # subprocess modülünü içe aktar

# Pencere arka plan rengini beyaz yap
Window.clearcolor = (1, 1, 1, 1)  # RGBA formatında beyaz

class MainLayout(BoxLayout):
    def __init__(self, **kwargs):
        super(MainLayout, self).__init__(**kwargs)
        self.orientation = 'horizontal'
        self.padding = 20
        self.spacing = 20

        # Sol kısım için dikey kutu
        left_column = BoxLayout(orientation='vertical', size_hint=(0.5, 1), spacing=10)
        
        # Başlık
        title = Label(text='Smartguard Kask', font_size=28, color=(0, 0, 0, 1),
                      size_hint_y=None, height=50)
        left_column.add_widget(title)

        # Logoları ekle
        for i in range(1, 5):
            logo = Image(source=f'assets/logo{i}.png', size_hint=(1, None), height=100)
            left_column.add_widget(logo)

        self.add_widget(left_column)

        # Sağ kısım için dikey kutu
        right_column = BoxLayout(orientation='vertical', size_hint=(0.5, 1), spacing=20)

        # Butonları ekle
        self.object_button = Button(text='Nesne Tespiti', size_hint=(1, 0.2), background_color=(0.2, 0.6, 0.8, 1))
        self.location_button = Button(text='Konum Tespiti', size_hint=(1, 0.2), background_color=(0.8, 0.4, 0.2, 1))

        self.object_button.bind(on_press=self.open_selection)
        self.location_button.bind(on_press=self.location_selected)

        right_column.add_widget(self.object_button)
        right_column.add_widget(self.location_button)

        self.add_widget(right_column)

    def open_selection(self, instance):
        print("Nesne Tespiti seçildi")
        subprocess.Popen(["python", "seciniz.py"])  # seciniz.py'yi çalıştır

    def location_selected(self, instance):
        print("Konum Tespiti seçildi")
        # Konum tespiti işlemi burada eklenebilir

class MyApp(App):
    def build(self):
        return MainLayout()

if __name__ == '__main__':
    MyApp().run()
