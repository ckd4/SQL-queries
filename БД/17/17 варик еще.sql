Create table ����������
(���_���������� int primary key identity(1,1),
�������� nvarchar(25) not null,
�������� nvarchar(50) null,
���_��������_��������_��������� int not null)

Create table ��������
(���_������������� int not null,
���_���������� int not null,
���������_���� decimal(7,2) null,
���������_������ bit null,

Constraint [��������_PK] primary key clustered (���_�������������, ���_����������),
Foreign key (���_����������) references ���������� (���_����������)
on delete cascade
on update cascade)

insert into ����������
(��������,
��������,
���_��������_��������_���������)

values
('����������', '�������� ������', 2018),
('��������', '�������', 2017),
('������ �������������� ��', 'SQL', 2020),
('������ ��������', '��������', 2000),
('������ �����', '�����������', 2010),
('������ ����������', '�������', 2015),
('���������� ��������', '���', 1995),
('���', '����������� ���������� ��-�', 2019),
('���', '����������������� ����', 2007),
('�����������', '����������', 2004);

Insert into ��������
(���_����������,
���_�������������,
���������_����,
���������_������)

Values
(1, 30912, 150, 1),
(2,12313, 2000, 0),
(3, 48974, 3000, 0),
(4, 92087, 1000, 0),
(5, 98724, 2200, 0),
(6, 92782, 1100, 1),
(7, 24897, 90, 1),
(8, 82947, 950, 1),
(9, 92349, 2300, 0),
(10, 95549, 2250, 1);