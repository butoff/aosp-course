### Материалы к курсам по платформенной Android разработке

Здесь находятся скрипты, конфигурации, докерфайлы и прочие материалы, полезные
для работы с исходным кодом AOSP.

#### Получение исходников

В простейшем случае мы получаем исходники из оригинального манифеста AOSP.
Например, для релиза _android-11.0.0_r3_:
```
repo init -u https://android.googlesource.com/platform/manifest -b android-11.0.0_r3 --depth=5
repo sync -c
```

#### docker

Инвариант окружения для сборки находится в директории _docker_. Необходимо
сначала собрать скриптом _build.sh_ из _Dockerfile_ docker image, а затем
создать и выполнить контейнер скриптом _run.sh_. Приведенный Dockerfile
протестирован для сборок таргетов _aosp_x86-eng_ и _aosp_sunfish-userdebug_ из
релиза _android-11.0.0_r3_.

#### Настройка окружения и сборка

Общепринятая в AOSP последовательность команд
```
source build/envsetup.sh
lunch
m
```
В меню lunch выбрать, например, _aosp_x86-eng_ для эмулятора и
_aosp_sunfish-userdebug_ для устройства Pixel 4a.
