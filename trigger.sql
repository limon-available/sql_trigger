create table population(
name varchar(20),
nid varchar(20),
dob date
);
create table birth_people(
name varchar(20),
dob date
);
create table dead_people(
name varchar(20),
nid varchar(20),
dob date
);
alter trigger after_birth
on birth_people
after insert
as
begin
insert into population(name,nid,dob)
 select name,nid,dob 
 from inserted;
end;
select *from population;
insert into birth_people values('waziha','11-01-2025','101');
alter table birth_people add nid varchar(20);
drop trigger trigg;
select *from birth_people;

create trigger after_dead
on dead_people
after insert
as
begin
delete from population
where nid in(select nid from inserted);
end;
insert into dead_people values(null,'101',null);
select *from dead_people;