from kivy.app import App
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.button import Button
import subprocess

class OptionsDialog(BoxLayout):
    def __init__(self, **kwargs):
        super(OptionsDialog, self).__init__(**kwargs)
        self.orientation = 'vertical'

        self.object_button = Button(text='Nesne Tespiti')
        self.traffic_sign_button = Button(text='Trafik İşaretleri')

        self.object_button.bind(on_press=self.object_selected)
        self.traffic_sign_button.bind(on_press=self.traffic_sign_selected)

        self.add_widget(self.object_button)
        self.add_widget(self.traffic_sign_button)

    def object_selected(self, instance):
        print("Nesne Tespiti seçildi")
        # Burada nesne tespiti kodunu çalıştırabilirsiniz

    def traffic_sign_selected(self, instance):
        print("Trafik İşaretleri seçildi")
        # Burada trafik işaretleri kodunu çalıştırabilirsiniz

class SelectionApp(App):
    def build(self):
        return OptionsDialog()

if __name__ == '__main__':
    SelectionApp().run()
