1. Параметризированы:
```
• ID проекта (обязательно)
• source_image_family (обязательно)
• machine_type 
```
2. Создан variables.json и добавлен в .gitignor

3. Исследованы другие опции builder для GCP. Добавлены опции:

```
• Описание образа
• Размер и тип диска
• Теги
```
4. Создан variables.json.example с примером заполнения.

5. Создан шаблон immutable.json с image_family reddit-full.
Для запуска приложения используется systemd unit.

6. Создан .sh скрипт для запуска виртуальной машины из образа,
создаваемого после immutable.json.
