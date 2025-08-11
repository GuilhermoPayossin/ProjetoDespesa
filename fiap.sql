create table java_categoria (
    id_categoria number,
    categoria varchar2(50),
    constraint pk_categoria primary key (id_categoria)
);

create table java_despesa (
    id_despesa number,
    descricao varchar2(100),
    valor number(12,2),
    dt date,
    id_categoria number,
    constraint pk_despesa primary key (id_despesa),
    constraint fk_despesa_categoria foreign key (id_categoria) references java_categoria(id_categoria) on delete cascade
);

insert into java_categoria VALUES(1, 'moradia');
insert into java_categoria VALUES(2, 'transporte');

insert into java_despesa values(1, 'supermercado', 150, to_date('2025/08/11', 'YYYY/MM/DD'), 1);

select * from java_categoria;
select * from java_despesa;