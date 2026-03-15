## Домашнее задание к занятию «Организация сети»

## Шкутов Иван Владимирович.

Подготовка к выполнению задания.

  1. Домашнее задание состоит из обязательной части, которую нужно выполнить на провайдере Yandex Cloud, и дополнительной части в AWS (выполняется по желанию).

  2. Все домашние задания в блоке 15 связаны друг с другом и в конце представляют пример законченной инфраструктуры.

  3. Все задания нужно выполнить с помощью Terraform. Результатом выполненного домашнего задания будет код в репозитории.

  4. Перед началом работы настройте доступ к облачным ресурсам из Terraform, используя материалы прошлых лекций и домашнее задание по теме «Облачные провайдеры и синтаксис Terraform». Заранее выберите регион (в случае AWS) и зону.


### Задание 1. Yandex Cloud

Что нужно сделать

  1. Создать пустую VPC. Выбрать зону.

  2. Публичная подсеть.
```
    - Создать в VPC subnet с названием public, сетью 192.168.10.0/24.
    - Создать в этой подсети NAT-инстанс, присвоив ему адрес 192.168.10.254. В качестве image_id использовать fd80mrhj8fl2oe87o4e1.
    - Создать в этой публичной подсети виртуалку с публичным IP, подключиться к ней и убедиться, что есть доступ к интернету.
```
  
  3. Приватная подсеть.
```
    - Создать в VPC subnet с названием private, сетью 192.168.20.0/24.
    - Создать route table. Добавить статический маршрут, направляющий весь исходящий трафик private сети в NAT-инстанс.
    - Создать в этой приватной подсети виртуалку с внутренним IP, подключиться к ней через виртуалку, созданную ранее, и убедиться, что есть доступ к интернету.
```

### Решение:

- - - - - 











![1](https://github.com/Ivan-Shkutov/clopro_15.1/blob/main/img/1.png)

![2](https://github.com/Ivan-Shkutov/clopro_15.1/blob/main/img/2.png)

![3](https://github.com/Ivan-Shkutov/clopro_15.1/blob/main/img/3.png)

![4](https://github.com/Ivan-Shkutov/clopro_15.1/blob/main/img/4.png)

![5](https://github.com/Ivan-Shkutov/clopro_15.1/blob/main/img/5.png)

![6](https://github.com/Ivan-Shkutov/clopro_15.1/blob/main/img/6.png)

![7](https://github.com/Ivan-Shkutov/clopro_15.1/blob/main/img/7.png)

![8](https://github.com/Ivan-Shkutov/clopro_15.1/blob/main/img/8.png)

![9](https://github.com/Ivan-Shkutov/clopro_15.1/blob/main/img/9.png)

![10](https://github.com/Ivan-Shkutov/clopro_15.1/blob/main/img/10.png)

![11](https://github.com/Ivan-Shkutov/clopro_15.1/blob/main/img/11.png)

![12](https://github.com/Ivan-Shkutov/clopro_15.1/blob/main/img/12.png)


- - - - - 
