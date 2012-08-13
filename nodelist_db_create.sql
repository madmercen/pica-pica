-- create table schema and insert initial node addresses

create table if not exists nodes 
                    (
                        address varchar(255) not null,
                        port int not null,
                        last_active int not null,
                        inactive_count int not null,
                        constraint pk primary key (address,port) on conflict replace 
                     );
insert into nodes values("picapica.im", 2299, 0, 0); 
insert into nodes values("picapica.ge", 2299, 0, 0); 

