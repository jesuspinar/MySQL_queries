 -- > Eventos :  tarea que se ejecuta automaticamente ... es un cron job 
 -- tareas para ejecutar de forma periodica , hacer pruebas de rendimiento
 -- por defecto no estan habilitados 
SHOW variables LIKE 'event%';
#SET GLOBAL event_scheduler = ON