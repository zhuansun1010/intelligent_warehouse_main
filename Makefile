OBJS = main.o data_global.o link_list.o pthread_analysis.o pthread_buzzer.o \
		pthread_camera.o pthread_client_request.o pthread_infrared.o pthread_led.o pthread_refresh.o \
		pthread_sqlite.o pthread_transfer.o pthread_uart_cmd.o sqlite_link_list.o uart_cache.o 
OBJ = ceshi
CC = arm-none-linux-gnueabi-gcc 
LIBS = -L/home/fs/main_nfs/main_nfs/lib -lsqlite3

$(OBJ):$(OBJS)
	$(CC) -lpthread -lsqlite3 -o $@ $^ $(LIBS)
main.o:main.c 
	$(CC) -c $^ -o $@ 
data_global.o:data_global.c 
	$(CC) -c $^ -o $@
link_list.o:link_list.c  
	$(CC) -c $^ -o $@
pthread_analysis.o:pthread_analysis.c 
	$(CC) -c $^ -o $@
pthread_buzzer.o:pthread_buzzer.c 
	$(CC) -c $^ -o $@
pthread_camera.o:pthread_camera.c 
	$(CC) -c $^ -o $@
pthread_client_request.o:pthread_client_request.c
	$(CC) -c $^ -o $@
pthread_infrared.o:pthread_infrared.c 
	$(CC) -c $^ -o $@
pthread_led.o:pthread_led.c 
	$(CC) -c $^ -o $@
pthread_refresh.o:pthread_refresh.c 
	$(CC) -c $^ -o $@
pthread_sqlite.o:pthread_sqlite.c  
	$(CC) -c $^ -o $@
pthread_transfer.o:pthread_transfer.c 
	$(CC) -c $^ -o $@
pthread_uart_cmd.o:pthread_uart_cmd.c 
	$(CC) -c $^ -o $@
sqlite_link_list.o:sqlite_link_list.c 
	$(CC) -c $^ -o $@
uart_cache.o:uart_cache.c
	$(CC) -c $^ -o $@
clean:
	rm *.o
