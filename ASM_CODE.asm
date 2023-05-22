
;PROYECTO ASM DE FUNDAMENTOS DE COMPUTADORAS 

;INTEGRANTES:     

;ANDRIK SOLANO JIMENEZ
;FABRICIO PORRAS MORERA
;CARLOS SOLIS MORA            


;        (((((((((((REGULADOR DE TAREAS))))))))))))))))) 



;                   (=INTERFAZ GRAFICA=) 


;           Se maneja mediante mouse                      (COMPLETADO)

;           Tiene cambios visuales, colores, fondo etc... (COMPLETADO) 

                                               
                                               
;                   (=CONSULTAR DIA,FECHA,HORA=)


;              Se muestra la fecha           (COMPLETADO)

;              Se muestra el dia             (COMPLETADO)

;              Se muestra la hora            (COMPLETADO)

;              La hora se actualiza          (COMPLETADO PERO NO IMPLEMENTADO (ESTA COMENTADO) )
             


;                   (=OPERACIONES ARITMETICAS=) 

;                   Suma                            (COMPLETADO) 

;                   Resta                           (COMPLETADO) 

;                   Multiplicacion                  (COMPLETADO)       [[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[]
;                                                                      [                                                                 ]
;                   Division                        (COMPLETADO)  Nota [Lo de punto flotante no completado porque Emu8086 no lo soporta  ]
;                                                                      [                                                                 ]
;                   Potencia                        (COMPLETADO)       [[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[]

;                   Factorial                       (COMPLETADO) 


                   
;                   (=CONVERSIONES DE UNIDADES=) 


;                        SISTEMAS NUMERICOS

;                   Decimal a binario               (COMPLETADO)

;                   Binario a decimal               (COMPLETADO)

;                   Hexadecimal a binario           **INCOMPLETO** ;
                                                                   ;Nota   Esto es complicado en un lenguaje de Alto nivel por lo que
;                   Binario a hexadecimal           **INCOMPLETO** ;       al intentarlo en un lenguaje de bajo nivel, no logramos avanzar mucho


;                        LONGITUDES


;                   Metros a kilometros             (COMPLETADO)                    
;                                                                    [[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[]                                                                
;                   Kilometros a metros             (COMPLETADO)     [   En dos de estas operaciones solo se manda un mensaje -       ]
;                                                                    [   diciendo que no se pudo realizar debido a las limitaciones - ] 
;                   Kilometros a millas             (COMPLETADO) Nota[   de punto flotante al realizar division o multiplicacion -    ] 
;                                                                    [   por ejemplo multiplicar Millas a Kilometros (1,6) o -        ]
;                   Millas a metros                 (COMPLETADO)     [   Dividir Kilometros entre millas (0,6)                        ]
;                                                                    [[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[]
;                   Millas a kilometros             (COMPLETADO)           
                                                                 
                                                                 
                                                                 
;                         MASAS
;
;                   Gramos a kilometros             (COMPLETADO)     (((((((((((((((((((((((((((((((((((((((((((((((((((()
;                                                                    <Paso lo mismo que en el caso de longitudes         )
;                   Gramos a libras                 (COMPLETADO)     <debido a que algunas unidades de medida            )
;                                                                    <son unidades que requerian punto flotante          )
;                   Kilos a libras                  (COMPLETADO) Nota(por lo que se tomo la unidad de medida de forma    )
;                                                                    <redondeada al numero mas cercado                   )
;                   Libras a gramos                 (COMPLETADO)     <para poder completarlo                             )
;                                                                    (((((((((((((((((((((((((((((((((((((((((((((((((((()
;                   Libras a kilogramos             (COMPLETADO) 



;                       MONEDAS
;
;                  Colones a dolares                (COMPLETADO)
;
;                  Dolares a colones                (COMPLETADO)   
;                  
                           

;                      ARCHIVOS
;
;                  Crear archivo                    (COMPLETADO)
; 
;                  Eliminar Archivo                 (COMPLETADO)
;
;                  Editar un Archivo                (COMPLETADO)



;                      DOCUMENTACION
;                  
;                 Se muestra las tareas realizadas   (COMPLETADO) 
;
;                 Se muestra un resumen del proyecto (COMPLETADO)  
;
;                 Se explica cada parte del codigo   (COMPLETADO)
;                      
                                                   
                                                   
;                       **FIN DEL REGULADOR DE TAREAS**


;           (((((((((((NOTAS Y COMENTARIOS ESCRITOS)))))))))))))))))                    
;                                                                
;   En el caso del punto flotante, no fue posible agregarlo, debido a que hicimos investigacion y no encontramos nada referente a esto 
;y descubrumos que el emu8086 no lo soporta por lo que tuvimos que realizar algunos cambios en algunas aplicaciones para poder 
;adaptarnos a los recursos que se pueden lograr, por ejemplo en las unidades de medida, fue un problema el no poder obtener 
;el punto flotante por lo que en 'longitudes'pusimos una nota sobre esto y en masas cambiamos el metodo, redondeando al numero mas cercado. 

;   En el caso de mostrar el dia,fecha y hora, fue logrado pero lo de actualizar los segundos fue algo mas complicado
;debido a que es con un ciclo por lo que impedia poder usar el mouse debido a que este se basa en otro ciclo, entonces
;no tendria funcion de regreso, y, aparte como se limpia la pantalla y se agrega la nueva fecha casi de manera instantanea
;esta se veria parpadeando, por lo que es otra razon por la que decidimos (no quitarla) comentarla para que se vea
;que si se habia logrado

;   Se implemento los cambios de colores pero no se implementaron en todos los menus debido a que 
;era una sobrecarga de codigo
                                            

;Cada vez que aparece el codigo 'Call clear_screen', 'MOV AX, 0 ', 'MOV DX, 0 ', 'MOV BX, 0 ', 'MOV CX, 0 ', 'MOV, si, 0' Es para  Limpiar registros y pantalla
          
;Cada vez que aparece el codigo 'mov ah, 06h', 'mov al, 00h', 'mov bh, #numeros para fondo y letra ', 'mov ch,00', 'mov cl,00', 'mov dh,25d', 'mov dl,80h', 'int 10' Es para colorear

;Cada vez que aparece el codigo 'LEA dx, y un mensaje ', 'mov ah,9', 'int 21h', 'printn"" ', Es para leer un mensaje y el pintn "" es para dar espacios 

           

; En general logramos completar mas de los ejercicios que pensabamos que lograriamos por lo que nos sentimos satisfechos
;No logramos solo completar dos ejercicios que serian lo de hexadecimal porque lo vimos muy complejo para emu8086
;pero al tener tantos ejercicios que logramos completar y junto a los menus que involucran el mouse y las coordenadas
;el codigo tarda bastante rato en abrirse

;                       RESUMEN DE COMO FUNCIONA LA APLICACION
;
;   La aplicacion funciona mediante un menu que muestra las opciones generales que se pueden utilizar y una opcion de salir, se ingresa
;mediante el mouse poniendo el cursor justo en el medio del numero de la opcion que desee, pero se tiene que ser bastante precisos, 
;debido a que emu8086 no permite hacer mas de una comparacion para poder abarcar cierto rangos de coordenadas, luego de que selecciona                                                                                                                        
;la opcion general, esta lo va a llevar a diferentes submenus con mas opciones, cada submenu tiene la opcion de volver al menu general,
;si desea, una vez ingrese a una opcion que lo lleve a una funcion, le va a pedir los datos y se tiene que dar enter, y enseguida mostrara                                                                                                                     
;el resultado y se quedara esperando una tecla cualquiera, que una vez presionada hara que vuelva al submenu en donde esta.
   
   
   
;                           **FIN DE NOTAS Y COMENTARIOS ESCRITOS***   
                                                                       
                                                                                  
.model medium
 
include 'emu8086.inc' ;Se incluyen las librerias de emu8086 
org 100h            
.data    


      
      
;               (((((((((((INICIO DE LAS VARIABLES UTILIZADAS EN EL CODIGO)))))))))))))))))       
      
         

;                                       VARIABLES DEL MENU
                        
                                msg1_menu db 'MENU PRINCIPAL', '$'
                                msg1_1_menu db 'SUBMENU', '$'
                                
                                
                                
                                msg2_menu db '1. Consultar Hora', '$'
                                
                                                               
                                msg3_menu db '2. Operaciones Aritmeticas', '$' 
                                
                                msg3_1_menu db '1. Realizar una suma', '$'
                                msg3_2_menu db '2. Realizar una resta', '$'
                                msg3_3_menu db '3. Realizar una multiplicacion', '$'
                                msg3_4_menu db '4. Realizar una division', '$'
                                msg3_5_menu db '5. Realizar una potencia', '$'
                                msg3_6_menu db '6. Realizar una factorial', '$'
                                msg3_7_menu db '7. Volver', '$'
                                
                                
                                msg4_menu db '3. Conversiones de unidades', '$'
                                
                                msg4_1_menu db '1. Sistemas numericos', '$'
                                msg4_1_1menu db '1. Decimal a binario', '$'
                                msg4_1_2menu db '2. Binario a decimal', '$' 
                                msg4_1_3menu db '3. Volver. ', '$'
                                
                                msg4_2_menu db '2. Sistemas de longitud', '$' 
                                
                                msg4_3_menu db '3. Sistemas de masas', '$'  
                                
                                msg4_4_menu db '4. Sistemas de monedas', '$' 
                                
                                msg4_5_menu db '5. Volver', '$'
                                
                                
                                
                                msg5_menu db '4. Editor de textos y archivos', '$'
                                
                                   
                                msg6_menu db '5. Salir', '$'
         
                  
                  
                                         ;VARIABLES DE FECHA Y HORA
                  
                               texto  db 0,0,TAB,TAB    ;Se guarda todo, fecha, dia, hora
                               fecha  db "Dia de la semana: "  
                               semana db 0, TAB                 
                                             db "20"
                               year db 0, 0, '-'            ;{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{}
                               mes db 0, 0, '-'             ;{Datos en ingles debido a que la interrucion}
                               dia  db 0, 0, TAB       ;Nota;{mov 2ah y mov 2ch obtiene la fecha y hora  }                                         
                                                            ;{pero en ingles                             }
                               hora db 0, 0, ':'            ;{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{}
                               minutos db 0, 0, ':' 
                               segundos db 0, 0, 13,14,'$'
                                               
                                                            
                               tabla_semanas db "SMTWTFS"            
                                         
                  


                                         ;VARIABLES DE LAS OPERACIONES ARITMETICAS   
                              
                                                   ;Variables de suma
                             num1_suma DW ?
                             num2_suma DW ?
                             resultado_suma DW ?
                             msg1_suma Db 10,13, 'Digite el primer numero: ', '$' 
                             msg2_suma Db 10,13, 'Digite el segundo numero: ', '$' 
                             
                              
                                                   ;Variables de resta
                             num1_resta DW ?
                             num2_resta DW ?
                             resultado_resta DW ?
                             msg1_resta Db 10,13, 'Digite el primer numero: ', '$' 
                             msg2_resta Db 10,13, 'Digite el segundo numero: ', '$'
                                       
                               
                                                  ;Variables de multiplicacion
                              
                              msg1_multiplicacion dw 10,13,'Digite el primer numero: ' , '$'
                              msg2_multiplicacion db 10,13,'Digite el segundo numero: ', '$'
                              num1_multiplicacion dw ?
                              num2_multiplicacion dw ?
                              resultado_multiplicacion dw ?                  
                                                  
                                                  
                                                  ;Variables de division   
                              msg1_division dw 10,13,'Digite el primer numero: ', '$'
                              msg2_division db 10,13,'Digite el segundo numero: ', '$'
                              msg3_division db 10,13, 'y unos decimales...', '$'
                              num1_division dw ?
                              num2_division dw ?
                              
                                                  ;Variables de potencias 
                                numero_potencia DB 10,13, "Escriba el numero a potenciar: ","$"
                                exponente_potencia DB 10,13, "Escriba el exponente: ","$"
                                num1_potencia DW ?
                                contar_potencia DW 0                     
                                                   
                                                  ;Variables de factorial 
                                                   
                              msg1_factorial db 10,13,"Ingrese un numero para ver su factorial: ","$"
                              num_factorial dw ?  ;numero ingresado    
                              aux_factorial dw ?  ;respaldar numero
                              fact_orial dw 1 ;variable donde se van sumando multiplicaciones
                                                
                        
                           
                           
                                        ;VARIABLES DE CONVERCIONES ARITMETICAS 
                                                             
                                                             
                                                 
                                                  ;Decimal a binario 
                                                                           
                              resultado_decimal_binario db 16 dup('x'), 'b'        
                              
                              msg1_decimal_binario db 10,13,"Ingrese el numero:" ,"$"
                                            
                              msg2_decimal_binario db 10,13, "El numero convertido a binario es: " ,"$"  
                              
                              
                                                  ;Binario a decimal 
                             msg1_binario_decimal db 10,13,"Ingrese el numero: ", "$"  
                             msg2_binario_decimal db 10,13, "ERROR: Solo se permite ceros y unos!","$"
                                                  
                                                  DB "0"
                             s1_binario_decimal DB "00000000", 0
                             Resultado_binario_decimal DW 0 
                             bandera_binario_decimal DB 0
                        
                                                    
                                                    
                             
                                            ;VARIABLES DE LONGITUDES
                    
                              metr_kilo db 10,13," 1.Metros a kilometros", "$"
                              metr_mil db 10,13," 2.Metros a millas", "$"
                              kilo_metr db 10,13," 3.Kilometros a metros", "$"
                              kilo_mil db 10,13," 4.Kilometros a millas", "$"
                              mil_metr dw 10,13,"5.Millas a metros","$"
                              mil_kilo db 10,13," 6.Millas a kilometros", "$"
            
                              num1_division_mult dw ?   
                                      
                              num2_division_mult dw ?  
                                     
                              resultado_division_mult dw ?
                 
                             
    
                                     
                                            ;VARIABLES DE MASAS
                            
                            msg1_gramos_kilos DB 10, 13, "1. Gramos a kilogramos","$" 
                            
                            msg2_gramos_libras DB 10, 13, "2. Gramos a libras","$" 
                            
                            msg3_kilos_gramos DB 10, 13, "3. Kilogramos a gramos","$"
                            
                            msg4_kilos_libras DB 10,13, "4. Kilogramos a libras","$" 
                            
                            msg5_libras_gramos DB 10,13, "5. Libras a gramos","$"
                            
                            msg6_libras_kilogramos DB 10,13, "6. Libras a kilogramos","$"
                            
                            msg7_masas_volver db 10,13,'7. Volver', '$'    
                            
                            num1_division_m DW ?
                            num2_division_m DW ?
                            resultado_division_m DW ?
                            var_m DW ?
                            
                            num1_multiplicacion_m DW ?
                            
                            
                                             ;VARIABLES DE UNIDADES MONETARIAS
                                             
                            msg1_dolar_colon DW 10, 13, "1. Dolar a colones","$" 
    
                            msg2_colon_dolar DW 10, 13, "2. Colones a dolares","$" 
                            
                            msg3_dias DW 10, 13, "Elija el dia en el que se realiza la conversion de la moneda","$"
                            
                            msg4_lunes DW 10,13, "1. Lunes","$" 
                            
                            msg5_miercoles DW 10,13, "2. Miercoles","$"
                            
                            msg6_sabado DW 10,13, "3. Sabado","$"
                            
                            msg7_decision DW 10,13, "Elija el modo de conversion","$" 
                            
                            msg8_volver db 10,13, '4. Volver', '$'       
                            
                            num1_moneda_division DW ?
                            num2_moneda_division DW ?
                            resultado_moneda_division DW ?
                            moneda DW ?
                            
                            num1_moneda_multiplicacion DW ?
                            
                            
                                                ;VARIABLES DEL EDITOR DE TEXTO
                                msj db 0ah,0dh, '***** Menu *****', '$'
                                msj2 db 0ah,0dh, '1.- Crear Archivo', '$'
                                msj3 db 0ah,0dh, '2.- Abrir Archivo', '$'
                                msj4 db 0ah,0dh, '3.- Modificar archivo', '$'
                                msj5 db 0ah,0dh, '4.- Eliminar archivo', '$'
                                msj6 db 0ah,0dh, '5.- Salir', '$'
                                msj7 db 0ah,0dh, 'El Cerrado de un archivo se hace automatico', '$'
                                msjelim db 0ah,0dh, 'Archivo eliminado con exito', '$'
                                msjcrear db 0ah,0dh, 'Archivo creado con exito', '$'
                                msjescr db 0ah,0dh, 'Archivo escrito con exito', '$'
                                msjnom db 0ah,0dh, 'Nombre del archivo: ', '$'
                                cadena db 'Cadena a Escribir en el archivo','$'
                                nombre db 'C:\prueba.txt',0
                                vec db 50 dup('$')
                                handle db 0
                                linea db 10,13,'$'
                    
                
                          
;                                            **FIN DE VARIABLES**                          
                             
;                                   (((((((((((INICIO DEL CODIGO))))))))))))))))) 

                                  
.code
.startup  

    mov ax,@data
    mov ds,ax 
                                  ;MENU GENERAL
       MENU: 
       
                                
            Call clear_screen   ;
            MOV AX,0            ;
            MOV DX, 0           ;>Cada vez que se vean estas lineas es para refrescar los registros
            MOV BX, 0           ;>y limpiar la pantalla
            MOV CX, 0           ;
            MOV si, 0 
            
        
           mov ah, 06h  ;Para que lea la pantalla de arriba hacia abajo.
           mov al, 00h
           mov bh,10001100b ;color del fondo y de la fuente
           mov ch,00  ;punto de inicio de colorear filas
           mov cl,00  ;punto de inicio de coloreo columnas
           mov dh,25d ;punto final de colorear filas
           mov dl,80d ;punto final de coloreo columnas
           int 10h    ;pantalla
                    
       
             
        LEA dx, msg1_menu  ;
        mov ah, 9          ;>Cada vez que se vean estas lineas es para imprimir 
        int 21h            ;>las variables y el 'printn "" ' se encarga de dar espacios
        printn ""          ;
        printn ""          ;
        
        LEA dx, msg2_menu ;Imprime mensaje
        mov ah, 9
        int 21h 
        printn ""
        printn ""   
        
        LEA dx, msg3_menu;Imprime mensaje
        mov ah, 9
        int 21h   
        printn "" 
        printn "" 
        
        LEA dx, msg4_menu;Imprime mensaje
        mov ah, 9
        int 21h   
        printn ""
        printn ""  
        
        LEA dx, msg5_menu ;Imprime mensaje
        mov ah, 9
        int 21h   
        printn ""
        printn ""
        printn ""
        printn "" 
        printn "" 
        printn "" 
        printn ""  
        
        LEA dx, msg6_menu ;Imprime mensaje
        mov ah, 9
        int 21h   
        printn "" 
        printn ""
       
        ciclin:
            mov ax,1   ;)Agrega el cursor del mouse
            int 33h    ;
                       ;
            mov ax, 3  ;)Agrega las coordenadas en las que esta el mouse
            int 33h    ;
            
            
            cmp dl, 19 
                je tiempo ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
            
            cmp dl,36
                je Aritmeticas  ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
            
            cmp dl, 52
                je conversiones ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
                                 
                
            cmp dl,68
            je texto_archivos ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
            
            
            cmp dl, 125 ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
            je salir
            
        
        
        
        
        jmp ciclin ;Encicla las comparaciones
                
    
                      
                                         ;MENU OPERACIONES ARITMETICAS 
                                              
    
  Aritmeticas:
        
        
         mov ah, 06h  ;Para que lea la pantalla de arriba hacia abajo.
         mov al, 00h
         mov bh,01101100b ;color del fondo y de la fuente
         mov ch,00  ;punto de inicio de colorear filas
         mov cl,00  ;punto de inicio de coloreo columnas
         mov dh,25d ;punto final de colorear filas
         mov dl,80d ;punto final de coloreo columnas
         int 10h    ;pantalla
                      
  
        Call clear_screen
        MOV AX,0
        MOV DX, 0         ;Imprime limpia registros y pantalla
        MOV BX, 0
        MOV CX, 0
        MOV si, 0
    
    
    
    
        LEA dx, msg1_1_menu ;Imprime mensaje
        mov ah, 9
        int 21h
        printn ""
        printn ""
        
        LEA dx, msg3_1_menu  ;Imprime mensaje
        mov ah, 9
        int 21h
        printn ""
        printn ""
        
        LEA dx, msg3_2_menu ;Imprime mensaje
        mov ah, 9
        int 21h
        printn ""
        printn "" 
        
        LEA dx, msg3_3_menu ;Imprime mensaje
        mov ah, 9
        int 21h  
        printn ""
        printn "" 
        
        LEA dx, msg3_4_menu ;Imprime mensaje
        mov ah, 9
        int 21h
        printn ""
        printn ""
        
        LEA dx, msg3_5_menu ;Imprime mensaje
        mov ah, 9
        int 21h
        printn ""
        printn "" 
        
        
        LEA dx, msg3_6_menu ;Imprime mensaje
        mov ah, 9
        int 21h
        printn ""
        printn ""
        
        LEA dx, msg3_7_menu ;Imprime mensaje
        mov ah, 9
        int 21h
        printn ""
        printn ""
      
        
       
       ciclin2_0:
       
            mov ax,1 ;)Invoca el mouse
            int 33h  ;
                     ;
            mov ax, 3;)Invoca las coordenadas del mouse 
            int 33h  ;
            
            cmp DX,20 ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
            je suma
            
            cmp DX, 37 ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
            je resta
            
            
            cmp DX, 53  ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
            je multiplicacion
            
            cmp DX, 67  ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
            je division
            
            cmp DX, 83 ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
            je potencia
            
            cmp DX, 99  ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
            je factorial
            
            cmp DX, 115 ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
            je MENU
            
         
       jmp ciclin2_0 ;Encicla                   

                                ;MENU DE LAS CONVERSIONES DE UNIDADES 
                                
                          
    conversiones:
        
         mov ah, 06h  ;Para que lea la pantalla de arriba hacia abajo.
         mov al, 00h
         mov bh,00011100b ;color del fondo y de la fuente
         mov ch,00  ;punto de inicio de colorear filas
         mov cl,00  ;punto de inicio de coloreo columnas
         mov dh,25d ;punto final de colorear filas
         mov dl,80d ;punto final de coloreo columnas
         int 10h    ;pantalla 
    
        Call clear_screen
        MOV AX,0
        MOV DX, 0
        MOV BX, 0          ;Limpia variables y la pantalla
        MOV CX, 0      
        MOV si, 0
    
    
    
    
        LEA dx, msg4_1_menu  ;Imprime mensaje
        mov ah, 9
        int 21h
        printn ""
        printn ""
        
        LEA dx, msg4_2_menu  ;Imprime mensaje
        mov ah, 9             
        int 21h
        printn ""
        printn ""
        
        LEA dx, msg4_3_menu  ;Imprime mensaje
        mov ah, 9
        int 21h
        printn ""
        printn "" 
        
        LEA dx, msg4_4_menu ;Imprime mensaje
        mov ah, 9
        int 21h  
        printn ""
        printn "" 
        
        LEA dx, msg4_5_menu ;Imprime mensaje
        mov ah, 9
        int 21h
        printn ""
        printn ""
        
        
         ciclin4_0:
       
            mov ax,1  ;)Invoca el mouse
            int 33h   ;
                      ;
            mov ax, 3 ;)Invoca las coordenadas con el mouse
            int 33h   ;
            
            cmp DX,3    ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
            je numericas  
            
            cmp DX, 19   ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
            je longitudes
            
            
            cmp DX, 35   ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
            je masas
            
            cmp DX, 51  ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
            je dinero
            
            cmp DX, 67   ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
            je MENU
            
         
       jmp ciclin4_0  ;Encicla 
                                        
                                        ;SUBMENU DE CONVERSIONES NUMERICAS
                                
      numericas:
                    Call clear_screen 
                    mov ah, 06h  ;Para que lea la pantalla de arriba hacia abajo.
                    mov al, 00h
                    mov bh,82h ;color del fondo y de la fuente
                    mov ch,00  ;punto de inicio de colorear filas
                    mov cl,00  ;punto de inicio de coloreo columnas
                    mov dh,25d ;punto final de colorear filas
                    mov dl,80d ;punto final de coloreo columnas
                    int 10h    ;pantalla
                    
                    MOV AX,0
                    MOV DX, 0  ;Limpia registros
                    MOV BX, 0
                    MOV CX, 0
                    MOV si, 0
          
                    LEA dx, msg4_1_1menu ;Imprime un mensaje
                    mov ah, 9
                    int 21h 
                    printn ""
                    printn ""
       
                    LEA dx, msg4_1_2menu ;Imprime un mensaje               
                    mov ah, 9
                    int 21h       
                    printn ""
                    printn ""   
                    
                    
                    LEA dx, msg4_1_3menu ;Imprime un mensaje
                    mov ah, 9
                    int 21h       
                    printn ""
                    printn "" 
                    
                    
                    ciclin_5:
                    mov ax,1  ;>Invoca el mouse 
                    int 33h   ;>
                              ;
                    mov ax, 3 ;>Invoca las coordenadas
                    int 33h   ;>
                    
                    cmp dx, 3 ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
                    je decimal_binario
                    
                    cmp dx, 19 ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
                    je binario_decimal
                    
                    cmp dx, 35 ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
                    je conversiones
                    
                    jmp ciclin_5 ;Encicla
                    
                    
                    
                    
                                        ;SUBMENU DE CONVERSIONES DE MASAS
                
      masas:
                    Call clear_screen 
                    mov ah, 06h  ;Para que lea la pantalla de arriba hacia abajo.
                    mov al, 00h
                    mov bh,82h ;color del fondo y de la fuente
                    mov ch,00  ;punto de inicio de colorear filas
                    mov cl,00  ;punto de inicio de coloreo columnas
                    mov dh,25d ;punto final de colorear filas
                    mov dl,80d ;punto final de coloreo columnas
                    int 10h
                    
                    MOV AX,0
                    MOV DX, 0  ;Limpia registros
                    MOV BX, 0
                    MOV CX, 0
                    MOV si, 0
         
                    
                    LEA dx, msg1_gramos_kilos ;Imprime un mensaje
                    mov ah, 9
                    int 21h 
                    printn ""
                    printn ""
                    
                    LEA dx, msg2_gramos_libras ;Imprime un mensaje               
                    mov ah, 9
                    int 21h       
                    printn ""
                    printn ""                            
                          
                    LEA dx, msg3_kilos_gramos ;Imprime un mensaje
                    mov ah, 9
                    int 21h       
                    printn ""
                    printn ""
                    
                    LEA dx, msg4_kilos_libras ;Imprime un mensaje
                    mov ah, 9
                    int 21h       
                    printn ""
                    printn ""
                                                
                    LEA dx, msg5_libras_gramos ;Imprime un mensaje
                    mov ah, 9
                    int 21h       
                    printn ""
                    printn ""
            
                    LEA dx, msg6_libras_kilogramos ;Imprime un mensaje
                    mov ah, 9
                    int 21h       
                    printn ""
                    printn ""
                    
                    
                    LEA dx, msg7_masas_volver ;Imprime un mensaje
                    mov ah, 9
                    int 21h       
                    printn ""
                    printn ""       
                                  
                ciclin_3:
                    
                    mov ax,1  ;>Invoca el mouse 
                    int 33h   ;>
                              ;
                    mov ax, 3 ;>Invoca las coordenadas
                    int 33h   ;>
                    
                    cmp dx, 12 ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
                    je gramosk
                    
                    cmp dx, 35 ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
                    je gramosl
                    
                    cmp dx, 60 ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
                    je kilogramog
                    
                    cmp dx, 82 ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
                    je kilogramol
                    
                    cmp dx, 107 ;Se compara las cordenadas y si son, se va a la etiqueta respectiva 
                    je librag 
                    
                    cmp dx, 130 ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
                    je librak
                    
                    cmp dx, 156 ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
                    je conversiones
                            
                    jmp ciclin_3 ;Encicla
                     
                     
                    
                    ;SUBMENU DE CONVERSIONES DE LONGITUDES
                    
                    
   longitudes:
     
        Call clear_screen ;Limpia la pantalla
         
                    mov ah, 06h  ;Para que lea la pantalla de arriba hacia abajo.
                    mov al, 00h
                    mov bh,82h ;color del fondo y de la fuente
                    mov ch,00  ;punto de inicio de colorear filas
                    mov cl,00  ;punto de inicio de coloreo columnas
                    mov dh,25d ;punto final de colorear filas
                    mov dl,80d ;punto final de coloreo columnas
                    int 10h
                    
        
         
        
        MOV AX,0
        MOV DX, 0 ;Limpiar registros
        MOV BX, 0
        MOV CX, 0
        MOV si, 0
       
             
        LEA dx, metr_kilo 
        mov ah, 9         ;Imprime un mensaje
        int 21h
        printn ""
        printn ""  
        
        LEA dx, metr_mil
        mov ah, 9         ;Imprime un mensaje
        int 21h 
        printn ""
        printn ""   
        
        LEA dx, kilo_metr
        mov ah, 9         ;Imprime un mensaje
        int 21h   
        printn "" 
        printn "" 
        
        LEA dx, kilo_mil
        mov ah, 9         ;Imprime un mensaje
        int 21h   
        printn ""
        printn ""  
        
        LEA dx, mil_metr
        mov ah, 9        ;Imprime un mensaje
        int 21h   
        printn ""
        printn ""  
        
        LEA dx, mil_kilo
        mov ah, 9        ;Imprime un mensaje
        int 21h   
        printn "" 
        printn ""
        
        print "7.Volver"  ;Imprime un mensaje         
                  
        ciclo_long:          
        mov ax,1
        int 33h
            
        mov ax, 3 
        int 33h 
        
        cmp dx, 11  ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
        je metro_kilo 
        
        
        cmp dx,36   ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
        je metro_milla
        
        
        cmp dx,59   ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
        je kilo_metro
        
        cmp dx,84   ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
        je kilo_milla
        
        cmp dx, 108 ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
        je milla_metro
        
        cmp dx, 132 ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
        je milla_kilo
        
        cmp dx,148  ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
        je conversiones 
        
        jmp ciclo_long ;Encicla 
        
                            
                            
                        ;SUBMENU DE LAS CONVERSIONES MONETARIAS
      dinero:                         
                    Call clear_screen 
                    mov ah, 06h  ;Para que lea la pantalla de arriba hacia abajo.
                    mov al, 00h
                    mov bh,82h ;color del fondo y de la fuente
                    mov ch,00  ;punto de inicio de colorear filas
                    mov cl,00  ;punto de inicio de coloreo columnas
                    mov dh,25d ;punto final de colorear filas
                    mov dl,80d ;punto final de coloreo columnas
                    int 10h
                    
                
                MOV AX,0
                MOV DX, 0
                MOV BX, 0   ;Limpia los registros
                MOV CX, 0
                MOV si, 0
        
                
                LEA dx, msg3_dias
                mov ah, 9          ;Imprime un mensaje en una variable
                int 21h 
                printn ""
                printn ""
                
                LEA dx, msg4_lunes
                mov ah, 9
                int 21h             ;Imprime un mensaje en una variable
                printn ""
                printn "" 
        
                LEA dx, msg5_miercoles
                mov ah, 9            ;Imprime un mensaje en una variable
                int 21h       
                printn ""
                printn ""
                
                LEA dx, msg6_sabado
                mov ah, 9
                int 21h              ;Imprime un mensaje en una variable
                printn ""
                printn "" 
                
                LEA dx, msg8_volver
                mov ah, 9
                int 21h              ;Imprime un mensaje en una variable
                printn ""
                printn ""                                   
        
            ciclin_6:
                
                mov ax,1  ;)Muestra el cursor del mouse
                int 33h   ;
                          ;
                mov ax, 3 ;)Muestra las coordenadas
                int 33h   ;
                
                cmp dx, 35  ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
                je lunes
                
                cmp dx, 60  ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
                je miercoles
                
                cmp dx, 82  ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
                je sabado
                
                cmp dx, 107 
                je conversiones ;Se compara las cordenadas y si son, se va a la etiqueta respectiva
                
                
                jmp ciclin_6
                  

       
                 
;                           **FIN DEl MENU Y SUBMENUS**

;                     (((((((((((INICIO DEL CODIGO GENERAL)))))))))))))))))  
        
   
                  

                                            ;CODIGO DE FECHA Y HORA

               tiempo:
                    Call clear_screen 
                    mov ah, 06h  ;Para que lea la pantalla de arriba hacia abajo.
                    mov al, 00h
                    mov bh,11110100b ;color del fondo y de la fuente
                    mov ch,00  ;punto de inicio de colorear filas
                    mov cl,00  ;punto de inicio de coloreo columnas
                    mov dh,25d ;punto final de colorear filas
                    mov dl,80d ;punto final de coloreo columnas
                    int 10h
                     
                MOV AX,0
                MOV DX, 0
                MOV BX, 0   ;Limpia los registros 
                MOV CX, 0
                MOV si, 0

                                             ;Esta funcion
                mov ah, 2ah                  ;Obtiene la fecha  
                int 21h 
                lea bx, tabla_semanas       ;Se le
                xlat                        ;Transmite un bit de la tabla
                mov w. semana, al                 ;'Se compara para obtener el dia (SMTWTFS) 
                add cx, 0f830h              ;Para los years 
                mov ax, cx 
                
                call deci ;Esta etiqueda es para pasar los datos a decimal
                mov w. year, ax 
                mov al, dh                   ;mes
                call deci 
                mov w. mes, ax 
                mov al, dl                   ;dia 
                call deci 
                mov w. dia, ax 
                
                horass:                      ;)Esta funcion 
                mov ah, 2ch                  ;)Obtiene la hora 
                int 21h 
                mov al, ch                   ;Horas
                call deci 
                mov w. hora, ax 
                mov al, cl                   ;Minutos 
                call deci 
                mov w. minutos, ax 
                mov al, dh                   ;Segundos 
                call deci
                mov w. segundos, ax 
                
                mov ah, TAB                 ;El tab como su nombre lo dice es para dar un espacio con tab
                mov dx, offset texto 
                int 21h                      ;Imprime el mensaje
                ;call clear_screen           ;Limpia la pantalla
                ;jmp horass                  ;Encicla la hora para estar actualizandose
  
                    
                
                
                ;jmp tiempo 
                 
                mov ah, 0 ;Espera por una tecla
                int 16h   ;
                
                jmp MENU ;Aplica un salto al menu despues de precionar cualquier tecla
                
                deci:                        ;Calcula en decimal 
                push cx                      ;Lo mete en la pila
                mov ah, 0                    ;Limpia el registro AH
                mov cl, 10                   ;Mueve a cl un 10
                div cl                       ;Aplica la division
                add ax, 3030h                ;Le suma 
                pop cx                       ;Lo saca de la pila
                ret                 
           
                     
                     
                     

                    ;CODIGOS DE LAS OPERACIONES ARITMETICAS
    
    ;Realiza la suma de dos numeros
    ;Suma  
    suma:
        Call clear_screen
        MOV AX,0
        MOV DX, 0
        MOV BX, 0     ;Limpia los registros y la pantalla
        MOV CX, 0
        MOV si, 0
        
        LEA dx, msg1_suma
        mov ah, 9          ;Imprime un mensaje en una variable
        int 21h 
        
        mov cx, 0
        mov ax,0
        mov dx,0       ;Limpia los registros
        mov bx,0 
        
        call SCAN_NUM   ;Obtiene un numero mediante SCAN_NUM
        mov num1_suma, cx ;Mueve el numero escaneado a la variable
        
        mov cx, 0
        mov ax,0
        mov dx,0       ;Limpia los registros
        mov bx,0
        
        LEA dx, msg2_suma
        mov ah, 9         ;Imprime un mensaje en una variable
        int 21h
        
        call SCAN_NUM ;Obtiene otro numero mediante SCAN_NUM
        mov num2_suma, cx  ;Mueve el numero obtenido a la variable correspondiente
        
        mov ax,num1_suma ;se mueve primer numero ingresado a ax
        add ax,num2_suma ;al numero 1 se le suma el segundo y el resultado queda almacenado en ax
        mov resultado_suma, ax ;se mueve el resultado a la variables resultado para respaldarla
        
        PUTC 10  ;)Se pone al inicio de la otra linea
        PUTC 13  ;)Da el salto de linea
        print "El resultado de la suma es:  " ;Imprime un mensaje 
    
        mov ax,0
        mov bx,0   ;Limpia registros
        mov cx,0           
        
        mov ax, resultado_suma ;Imrpime el resultado de la suma
        call PRINT_NUM

        mov ah, 0 ;Espera por una tecla
        int 16h   ;
        
        jmp Aritmeticas  ;Una vez precionada una tecla cualquiera se aplica el salto de linea
               
               
    
    ;Realiza la resta entre dos numeros    
    ;Resta      
    resta:
        Call clear_screen
        MOV AX,0
        MOV DX,0
        MOV BX,0         ;Limpia los registros y la pantalla
        MOV CX,0
        MOV si,0
        
        LEA dx, msg1_resta ;Imprime el mensaje en la variable
        mov ah, 9
        int 21h 
        
        mov cx, 0 
        mov ax,0   ;Limpia los registros
        mov dx,0
        mov bx,0 
        
        call SCAN_NUM  ;Llama a SCAN_NUM para obtener un numero
        mov num1_resta, cx  ;Mueve el numero obtenido a la variable
        
        mov cx,0 
        mov ax,0  ;Limpia los registros
        mov dx,0
        mov bx,0 
        
        LEA dx, msg2_resta
        mov ah, 9          ;Imprime un mensaje
        int 21h
        
        call SCAN_NUM  ;Llama a SCAN_NUM para obtener un numero
        mov num2_resta, cx ;Mueve el numero obtenido a la variable
        
        mov ax,num1_resta ;se mueve primer numero ingresado a ax
        sub ax,num2_resta ;al numero 1 le resta el segundo y el resultado queda almacenado en ax
        mov resultado_resta, ax ;se mueve el resultado a la variables resultado para respaldarla
        
        PUTC 10  ;)Se pone al inicio de la otra linea
        PUTC 13  ;)Da el salto de linea
        print "El resultado de la resta es:  "  ;Imprime el mensaje 
    
        mov ax,0
        mov bx,0
        mov cx,0           
        
        mov ax, resultado_resta  ;Mueve la respuesta a ax
        call PRINT_NUM           ;Imprime el numero

        mov ah, 0 ;Espera por una tecla
        int 16h   ;
        
        jmp Aritmeticas ; salta a aritmeticas
               
               
               
    ;Realiza la multiplicacion entre dos numeros           
    ;Multiplicacion
    multiplicacion:
        Call clear_screen
        MOV AX,0
        MOV DX, 0
        MOV BX, 0     ;Limpia la pantalla y los registros 
        MOV CX, 0
        MOV si, 0
        
        LEA dx, msg1_multiplicacion
        mov ah, 9                   ;Imprime el mensaje en una variable
        int 21h 
        
        mov cx, 0
        mov ax,0
        mov dx,0   ;Limpia los registros
        mov bx,0 
        
        call SCAN_NUM           ;Obtiene el numero en SCAN_NUM
        mov num1_multiplicacion, cx    ; Mueve el numero obtenido a la variable
        
        mov cx, 0
        mov ax,0  ;Limpia los registros
        mov dx,0
        mov bx,0 
        
        
        LEA dx, msg2_multiplicacion 
        mov ah, 9                       ;Imprime el mensaje en una variable
        int 21h
        
        call SCAN_NUM                ;Obtiene el numero en SCAN_NUM
        mov num2_multiplicacion, cx   ; Mueve el numero obtenido a la variabl
        
        mov ax, 0                      ;Limpia ax
        
        mov ax, num1_multiplicacion   ; Mueve a ax el primer numero
        
        mov bl, cl                    ;mueve lo que hay en cl a bl
        
        mul bl                        ;multiplica con el segundo numero
        
        mov resultado_multiplicacion, ax ;Mueve lo que hay en ax a la variable resultado
        
        PUTC 10  ;)Se pone al inicio de la otra linea
        PUTC 13  ;)Da el salto de linea
        print "El resultado de la multiplicacion es:  " ;Imprime un mensaje
    
        mov ax,0
        mov bx,0   ;Limpia los registros 
        mov cx,0           
        
        mov ax, resultado_multiplicacion  ;Mueve el resultado a ax
        call PRINT_NUM                    ;Imprime el numero

        mov ah, 0 ;Espera por una tecla
        int 16h   ;
        
        jmp Aritmeticas ;Salta a aritmeticas
          
       
    ;Realiza la division de un numero con un divisor
    ;Division
     division:
        Call clear_screen
        MOV AX,0
        MOV DX, 0
        MOV BX, 0         ;Limpia los registros y la pantalla
        MOV CX, 0
        MOV si, 0

        
        LEA dx, msg1_division
        mov ah, 9              ;Imprime el mensaje en una variable
        int 21h 
        
        mov dx,0
        mov ax,0             ;Limpia los registros
        mov bx,0
        mov cx,0 
        
        call SCAN_NUM        ;Obtiene un numero mediante SCAN_NUM
        mov num1_division, cx   ;Mueve el numero obtenido a la variable
        
        mov dx,0
        mov ax,0         ;Limpia los registros
        mov bx,0
        mov cx,0  
        
        LEA dx, msg2_division
        mov ah, 9             ;Imprime el mensaje en una variable
        int 21h
        
        call SCAN_NUM   ;Obtiene un numero mediante SCAN_NUM
        mov num2_division, cx    ;Mueve el numero obtenido a la variable
        
        mov ax, 0 ;)Limpia ax
        mov dx, 0 ;)Limpia dx
        
        mov ax, num1_division ;Mueve el primer numero a ax
        idiv num2_division     ;Aplica la divison de enteros
        cmp dx, 0              ;chequea el modular
        jnz decimales_division ;Si el modular no es 0, procede a saltar a decimales_division
        
        PUTC 10 ;
        PUTC 13 ;cambio de linea
        print 'El resultado es: ', '$' ;Imprime un mensaje

        call PRINT_NUM  ;Imprime el numero como resultado
               
        jmp exit ;va a la variable para salir (salta decimales_division)            
        
        decimales_division: ;Entra aqui si la division no es entera
        
        PUTC 10
        PUTC 13 ;cambio de linea
        print 'El resultado es: ', '$' ;Imprime un mensaje
        
        call PRINT_NUM  ;Imprime el numero como resultado
        
        mov dx,0
        mov ax,0   ;Limpia los registros
        mov bx,0
        mov cx,0 
                     
        
        print ' y unos decimales...', '$' ;Imprime el mensaje que se refiere a que el numero no es entero y contiene decimales
         
        exit:
            mov ah, 0 ;Espera por una tecla
            int 16h

            jmp Aritmeticas   ;Salta a Aritmeticas
     
     
    ;Obtiene un numero y le agrega un exponente para ver su resultado
    potencia:
        Call clear_screen
        MOV AX,0
        MOV DX, 0         ;Limpia los archivos y la pantalla
        MOV BX, 0
        MOV CX, 0
        MOV si, 0   
        
        lea dx, numero_potencia
        mov ah, 9h                ;Imprime el mensaje
        int 21h
        
        CALL scan_num        ;Obtiene el numero mediante SCAN_NUM
        mov num1_potencia, cx  ;Mueve el numero obtenido a la variable del numero 1
                     
        mov dx,0       ;Limpia los registros
        mov ax,0  
                  
        lea dx, exponente_potencia
        mov ah, 9h                  ;Imprime el mensaje
        int 21h
        
        call scan_num  ;Obtiene el numero mediante SCAN_NUM
        mov ax, num1_potencia ;Mueve el numero obtenido a la variable de la potencia                              

        cmp cx, 1   ;Compara el registro cx con 1
        je resultado_potencia 
        
        mov contar_potencia, 1 ;Mueve al contador de la potencia un uno
        
        ciclo:
            inc contar_potencia  ;Se incrementa el contador de la potencia
            
            mul num1_potencia    ;Aplica la multiplicacion
            
            cmp contar_potencia, cx  ;Compara el contador con el registro cx
            je resultado_potencia
            
            jmp ciclo      
        
        resultado_potencia:
         
            printn ""
            
            Print "El Resultado de la Potencia es: " ;Imprime un mensaje
            call print_num  ;Imprime el resultado de la potenciacion
            
            mov ah, 0 ;Espera por una tecla
            int 16h

            jmp Aritmeticas
    
            
    ;Ejecuta el factorial de un numero
    ;factorial
    factorial:
        Call clear_screen
        MOV AX,0
        MOV DX, 0   ;Limpia la pantalla y los registros
        MOV BX, 0
        MOV CX, 0
        MOV si, 0
        
        LEA dx, msg1_factorial
        mov ah, 9              ;Imprime el mensaje en la variable
        int 21h
    
        call SCAN_NUM   ;Obtiene el numero mediante SCAN_NUM
        mov num_factorial, cx ;Mueve el numero obtenido a la variable correspondiente
        mov aux_factorial, cx ;Mueve el numero tambien a un respaldo
    
        mov cx, num_factorial  ;Se mueve a cx, el numero en la variable
    
        cicloooo:
            mov ax, fact_orial  ;)Mueve el resultado a ax para poder
            mov bx, cx          ;)multiplicarlo con lo que hay en cx
            mul bx              ;)y el resultado se vuelve a guardar
            mov fact_orial,ax   ;)para multiplicar el resultado con 
                                ;)el contador - 1
    
        loop cicloooo  ;El loop se encarga de disminuir el cx, por lo tanto es como un contador
    
    
    
        PUTC 10
        PUTC 13 ;Salto de linea
        print "El resultado del factorial "  ;Imprime un mensaje
    
        mov ax,0
        mov bx,0   ;Limpia los registros
        mov cx,0          
        
        mov ax, aux_factorial    ;Se imprime el numero que estaba en el auxiliar
        call PRINT_NUM           
        print " es: "  
        
        
        mov ax, fact_orial
        call PRINT_NUM      ;Se imprime el resultado de la potenciacion
        
        mov ah, 0 ;Espera por una tecla
        int 16h

        jmp Aritmeticas           
        
 
                                ;CODIGO DE LAS CONVERSIONES NUMERICAS
                                      
    
        ;Convertir de decimal a binario
        decimal_binario:
                    call clear_screen
                    mov ax,0
                    mov bx,0          ;Limpia los registros y la pantalla
                    mov cx,0     
                    mov dx,0   
        
                    LEA dx, msg1_decimal_binario  ;Imprime un mensaje
                    mov ah, 9
                    int 21h 

                    call SCAN_NUM ;Obtiene el numero
                    
                    mov bx, cx  ;mueve el numero obtenido a bx
                    
                    call convertir_a_binario ;Llama a el procedimiento para convertir de decimal a binario
                    
                    LEA dx, msg2_decimal_binario  ;Imprime un mensaje
                    mov ah, 9
                    int 21h 
                   
                    
                    LEA si, resultado_decimal_binario  ;Imprime el resultado
                    mov ah, 0eh          ;mueve un 14 a ah que significa mostrar un string
                    mov cx, 17             ;mueve un 17 a cx para imprimir los 16 bits
                          
                          
                          
                    preparar:
                    	mov al, [si] ;mueve a al lo que esta en la posicion de [si]
                    	int 10h ;muestra un numero en pantalla
                    	inc si  ;incrementa la posicion de si
                    loop preparar
                    
                    mov ax,0
                    mov bx,0   ;limpia los resgitros
                    mov cx,0
                    mov dx,0  
                    
                    INT 16h      ;Espera por una tecla   
                    jmp numericas
                    
                    ret ; Vuelve al sistema operativo
                    
                    
                    convertir_a_binario    proc     near ;procedimiento para convertir a binario
                    pusha    ;mueve los registros a la pila
                    
                    lea di, resultado_decimal_binario  ;mueve el resultado a di
                    
                    ; Imprime el resultado en binario:
                    mov cx, 16      ;mueve a cx un 16
                    imprimir:  ;imprime la funcion
                            mov ah, 2   ;mueve un 2 a ah
                           mov [di], '0' ;mueve a la posicion del [di] el 0
                           test bx, 1000_0000_0000_0000b  ;Testea el primer bit mediante las banderas
                           jz cero  ;salto corto si es igual a cero
                           mov [di], '1' ;mueve a la posicion del [di] el 1
                    cero:  shl bx, 1  ;Desplazar todos los bits a la izquierda, el bit que se apaga se pone en CF. y El bit cero inserta en la posicion mas a la derecha
                           inc di   ;Incrementa di en 1
                    loop imprimir:  ;vuelve al loop con - 1 en cx
                    
                    popa  ;se eliminar o regresa todo los registros de la pila
                    ret      ;retorna el procedimiento mas cercado
                    convertir_a_binario   endp                    ;fin del procedimiento
                    
                    

 
       ;Convertir de binario a decimal
        binario_decimal:  
                    
                    call clear_screen
                    mov ax,0
                    mov bx,0        ;Limpia los registros y limpia la pantalla
                    mov cx,0
                    mov dx,0  
                    
                    
                    LEA dx, msg1_binario_decimal  ;Imprime un mensaje
                    mov ah, 9
                    int 21h 


                    MOV DX, 9   ; tamano del bufer (1+ para el terminador cero)
                    LEA DI, s1_binario_decimal ;mueve el string a DI
                    CALL GET_STRING ;Obtiene el string/numero
                    
                  
                    MOV CX, 8      ;Mueve el 8 a cx
                    MOV SI, OFFSET s1_binario_decimal ;mueve la variable a SI
                    revisar:                         ; Revisa si de verdad tenemos solo 1s/0s
                            CMP [SI], 0 ;compara la posicion con un 0
                            JNE es_0 ;Si no es 0 va a la etiqueta es_0     
                            MOV bandera_binario_decimal, 1     ;mueve a la a la variable bandera un 1
                            JMP convertir  ;salta a convertir
                        es_0:
                            CMP [SI], 'b' ;Compara SI  
                            JNE es_1     ;salta a es_1    
                            MOV bandera_binario_decimal, 1  ;mueve un 1 a la bandera
                            JMP convertir  ;salta a convertir      
                        es_1:   
                            CMP [SI], 31h ;compara la posicion SI con un 1 
                            JNA es_2 ;Es un numero binario por lo que salta a es_2
                            JMP error_no_1s_0s ;Si no, salta a esta etiqueta que dice que el numero no contiene solo 1s y 0s   
                        es_2:
                            INC SI ;Incrementa SI
                        LOOP revisar  ;Realiza el loop para revisar cada posicion, y se disminuye el contador cx-1
                    
                    
                    
                  
                    convertir: ;Inicia la conversion de string a valor
                    MOV BL, 1   ;mueve un 1 a bl.
                    MOV CX, SI  ;mueve lo que esta en si, a cx
                    SUB CX, OFFSET s1_binario_decimal ;le resta a cx lo que esta en la variable
                    DEC SI ;se disminuye SI
                    
                    JCXZ parar_programa ;hace el salto si el registro cx es 0
                    
                    digito_siguiente_binario_decimal:
                        MOV AL, [SI]  ;Obtiene el digito.
                        SUB AL, 30h   ;se le resta 30 a AL
                        MUL BL      ;Multiplica lo que hay en BL con Al y el resultado queda en AX 
                        ADD resultado_binario_decimal, AX ;se le suma a la variable el resultado de la multiplicacion
                        SHL BL, 1 ;Desplazar todos los bits a la izquierda, el bit que se apaga se pone en CF. y El bit cero inserta en la posicion mas a la derecha
                        DEC SI          ; Va al digito anterior.
                        LOOP digito_siguiente_binario_decimal  ;provoca un loop que hace que cx se reste en 1 cada vez
                    
                    
                    ; Hecho! Numero convertido y guardado en resultado_binario_decimal.
                    
                    ;Revisar si signed
                    TEST resultado_binario_decimal, 0000_0000_1000_0000b ;Testea el primer bit mediante las banderas
                    JNZ  print_numero_no_asignado  ;si no es un numero asignado va a esta etiqueta
                    
                    print_unsigned:
                    CALL Imprimir_cosas ;llama a una macro para imprimir
                    DB 0dh, 0ah, "decimal: ", 0 ;imprime el mensaje 
                    MOV  AX, resultado_binario_decimal ;mueve el resultado a ax
                    CALL PRINT_NUM_UNS              ;Imprime el resultado
                    JMP parar_programa
                    
                    print_numero_no_asignado:
                    CALL Imprimir_cosas ;imprime el mensaje que continua
                    DB 0dh, 0ah, "decimal no asignado: ", 0
                    ;Imprimir unsigned:
                    MOV  AX, resultado_binario_decimal  ;
                    CALL PRINT_NUM_UNS                  ; Imprime el resultado en decimal
                    CALL Imprimir_cosas               ;imprime el mensaje asignado
                    DB 0dh, 0ah, "decimal asignado: ", 0
                    ;Imprimir asingnado:
                    MOV  AX, resultado_binario_decimal
                    CBW  ; Convertir byte a word.
                    CALL PRINT_NUM   ;imprime el numero
                    JMP  parar_programa  ;va a la etiqueta de salida
                    
                    
                    error_no_1s_0s:  ;Esto pasa si se digita un numero que no sea 1 o 0
                    LEA dx, msg2_binario_decimal  ;Imprime un mensaje
                    mov ah, 9
                    int 21h
                    
                    parar_programa: ;etiqueta de salida
                    
                    
                    CALL Imprimir_cosas
                    DB 0dh, 0ah, "Precione cualquier tecla...", 0  ;imprime un mensaje
                    MOV AH, 0  ;regresca ah
                    INT 16h  ;Espera por una tecla   
                    jmp numericas   ;vuelve a numericas
           
                       
                                  

                       ;CODIGO DE LONGITUDES 
                        
      ;metros a kilometros
        metro_kilo:
        mov num2_division_mult, 1000
        mov si,1
        jmp seguir_div 
        
        ;metros a millas
        metro_milla:
        mov num2_division_mult, 1609
        mov si,1
        jmp seguir_div 
        
        
        ;kilometros a metros 
        kilo_metro:
        mov num2_division_mult, 1000
        mov si,2
        jmp seguir_mult
        
        ;kilometros a millas
        kilo_milla:
        Call clear_screen

         mov ah, 06h  ;Para que lea la pantalla de arriba hacia abajo.
         mov al, 00h
         mov bh,35h ;color del fondo y de la fuente, el primer digito es el del fondo en este caso 3 y el segundo de la fuente que es 5.
         mov ch,00  ;punto de inicio de colorear filas
         mov cl,00  ;punto de inicio de coloreo columnas
         mov dh,25d ;punto final de colorear filas
         mov dl,80d ;punto final de coloreo columnas
         int 10h
        print "Debido a limitaciones de emu 8086 no es posible dividir entre punto flotante (0,6)"
        jmp exit_div
        
        ;millas a metros
        milla_metro:
        mov num2_division_mult, 1609
        mov si,3
        jmp seguir_mult
        
        ;millas a kilometros
        milla_kilo:
        Call clear_screen 
          mov ah, 06h  ;Para que lea la pantalla de arriba hacia abajo.
          mov al, 00h
          mov bh,35h ;color del fondo y de la fuente, el primer digito es el del fondo en este caso 3 y el segundo de la fuente que es 5.
          mov ch,00  ;punto de inicio de colorear filas
          mov cl,00  ;punto de inicio de coloreo columnas
          mov dh,25d ;punto final de colorear filas
          mov dl,80d ;punto final de coloreo columnas
          int 10h
        print "Debido a limitaciones de emu 8086 no es posible multiplicar entre punto flotante (1,6)"
        jmp exit_div
        


        seguir_div:
            Call clear_screen
            mov ah, 06h  ;Para que lea la pantalla de arriba hacia abajo.
            mov al, 00h
            mov bh,35h ;color del fondo y de la fuente, el primer digito es el del fondo en este caso 3 y el segundo de la fuente que es 5.
            mov ch,00  ;punto de inicio de colorear filas
            mov cl,00  ;punto de inicio de coloreo columnas
            mov dh,25d ;punto final de colorear filas
            mov dl,80d ;punto final de coloreo columnas
            int 10h

        MOV AX,0   ;Se Limpias los registros
        MOV DX, 0
        MOV BX, 0
        MOV CX, 0

        
        primer_mensaje:
        
        cmp si,1  ; se compara si con 1 
        jz metros ; salta si es igual a 1 o es zero
        cmp si,2  ; se compara si con 2
        jz kilometros ;Salta a kilometros si es igual a 2 o es zero
        
        jmp millas ; Se salta a millas
        
        
        metros:
        print "Ingrese el numero en metros: "   ; Se imprime el mensaje para escribir en metros
        jmp seguir_div2    ; Se realiza el salto a seguir_div2
        
        
        kilometros:
        print "Ingrese el numero en kilometros: "    ; Se imprime el mensaje para escribir en kilómetros
        jmp seguir_div2      ;Se realiza el salto a seguir_div2
        
        millas:
        print "Ingrese el numero en millas: " ; Se imprime el mensaje para escribir en millas
        jmp seguir_div2 ; Se realiza el salto a seguir_div2
        

        seguir_div2:
        call SCAN_NUM  ;Se llama a scan_num
        mov num1_division_mult, cx  ; Se mueve el numero en cs, a la variable num1_division_mult
        
        mov dx,0 ; Se limpian los registros
        mov ax,0
        mov bx,0
        mov cx,0  
 
        
        
        mov dx, 0
        mov ax, num1_division_mult ;se mueve a ax la variable num1_division_mult
        idiv num2_division_mult  ; se divide ax por la variable en num2_division_mult
        cmp dx, 0
        jnz decimales_division
        
        printn "" ;Salto de linea
        print 'El resultado es: ', '$' ;Se implime el mensaje para mostrar el resultado
        call PRINT_NUM  ;Se llama a print_num para imprimir el resultado
        jmp exit_div   ;Se salta a exit_div         
        
        decimales_division_l:  ;si la division presenta decimales
        
        printn ""
        print 'El resultado es: ', '$' ;Se implime el mensaje para mostrar el resultado
        
        mov resultado_division_mult, ax  ;Se mueve a resultado_division_mult ax
        mov ax, resultado_division_mult  ;se vuelve a mover a ax resultado_division_mult
        call PRINT_NUM   ;Se llama PRINT_NUM para imprimir el numero
        
        print ' y unos decimales...', '$' ; se imprime (y unos decimales) pues este es el caso en el que se tienen unos decimalese extra
         
        exit_div:
            mov ah, 0 ;Espera por una tecla
            int 16h
            
            Call clear_screen    ;Se limpian la pantalla y los registros y se salta a menu
            MOV AX,0
            MOV DX, 0
            MOV BX, 0
            MOV CX, 0
            MOV si, 0
            jmp MENU
        
        
        seguir_mult:
         Call clear_screen
         mov ah, 06h  ;Para que lea la pantalla de arriba hacia abajo.
         mov al, 00h
         mov bh,35h ;color del fondo y de la fuente, el primer digito es el del fondo en este caso 3 y el segundo de la fuente que es 5.
         mov ch,00  ;punto de inicio de colorear filas
         mov cl,00  ;punto de inicio de coloreo columnas
         mov dh,25d ;punto final de colorear filas
         mov dl,80d ;punto final de coloreo columnas
         int 10h

         MOV AX,0  ;Se limpian los registros en uso
         MOV DX, 0
         MOV BX, 0
         MOV CX, 0
        
        primer_mensaje2:
        
        cmp si,1     ;Se mueve a si un 1
        jz metros2   ;Salta si es igual a 1 o es cero
        cmp si,2      ;Se mueve a si un 2
        jz kilometros2 ;Salta si es igual a 2 o es zero
        
        jmp millas2  ;Salto a millas2
        
        
        metros2:
        print "Ingrese el numero en metros: " ;Imprime el mensaje para digitar en metros
        jmp seguir_mult2 ;Salta a seguir_mult2
        
        
        kilometros2:
        print "Ingrese el numero en kilometros: " ;Imprime el mensaje para digitar en kilometros
        jmp seguir_mult2    ;Salta a seguir_mult2
        
        millas2:
        print "Ingrese el numero en millas: "  ;Imprime el mensaje para digitar en millas
        jmp seguir_mult2   ;Salta a seguir_mult2
        
        
        
        
    
        seguir_mult2:
        
        
        call SCAN_NUM  ;Se llama scan_num para digitar un valor
        mov num1_division_mult, cx   ;Se mueve el valor a num1_division_mult
        
        mov dx,0  ;se limpian los registros
        mov ax,0
        mov bx,0
        mov cx,0  

        mov bx, num2_division_mult  ;Se mueve a bx num2_division_mult
        
        xor ax, ax    ;Se limpia ax y dx
        
        mov dx, 0    ; 
        mov ax, num1_division_mult ;Se mueve num1_division a ax
        imul bx   ; se multiplica lo que hay en ax por bx
        cmp dx, 0     ; se compara si dx con zero
        jnz decimales_multiplicacion_l ;Salta si no es igual a zero o si no es zero
        
        printn ""
        print 'El resultado es: ', '$' ;Se imprime el mensaje para escribir el resultado

        call PRINT_NUM  ;Se llama print_num para imprimir el resultado
               
        jmp exit_mul  ;Se salta a exit_mul          
        
        decimales_multiplicacion_l: ;por si el resultado tiene decimales
        
        printn ""    ;Salto de linea
        print 'El resultado es: ', '$'  ;Se imprime el mensaje para escribir el resultado
        
        mov resultado_division_mult, ax   ;Se mueve a resultado_division_mult ax
        mov ax, resultado_division_mult ;Se mueve a ax, resultado_division_mult nuevamente
        call PRINT_NUM  ;Se llama print_num para imprimir el resultado
        
        mov dx,0   ;se limpian los registros
        mov ax,0
        mov bx,0
        mov cx,0 
        
        print ' y unos decimales...', '$'   ;Se imprime (y unos decimales) pues este es el resultado que tiene decimales sobrantes
        
        jmp exit_mul  ; se salta a exit_mul
        
        
        exit_mul:
            mov ah, 0 ;Espera por una tecla
            int 16h
            
            Call clear_screen  ;Se limpia la pantalla y los registros, se salta a longitudes
            MOV AX,0
            MOV DX, 0
            MOV BX, 0
            MOV CX, 0
            MOV si, 0
            jmp longitudes                
                        

                        ;CODIGO DE MASAS
                        
                        
                          
                        
                        
   gramosk:

        Call clear_screen  ;Se limpia la pantalla
        mov ah, 06h     ;Para que se lea de arriba abajo
        mov al, 00h
        mov bh,82h     ;El color de la fuente y fondo, el primer digito es el fondo y el segundo digito de la fuente
        mov ch,00      ;Punto de inicio de coloreo de filas
        mov cl,00      ;Punto de inicio de coloreo de columnas
        mov dh,25d     ;Punto final de coloreo de filas
        mov dl,80d     ;Punto final de coloreo de columnas
        int 10h        ;(En masas, cada vez que se repite este codigo, es para colorear la pantalla con el mismo formato.
        
        print 'Ingrese el numero en gramos: ','$'  ;Se imprime el mensaje para escribir en gramos
        
        mov var_m, 1000  ;Se mueve a var_m, 1000
        jmp division_m   ;Se salta a division_m
     
     gramosl:            

        Call clear_screen 
        mov ah, 06h  
        mov al, 00h
        mov bh,82h 
        mov ch,00  
        mov cl,00  
        mov dh,25d 
        mov dl,80d 
        int 10h
     
        print 'Ingrese el numero en gramos: ', '$' ;Se imprime el mensaje para escribir en gramos
        
        mov var_m, 454    ;Se mueve a var_m 454
        jmp division_m    ;Se salta a division_m
    
    kilogramog:
        Call clear_screen 
        mov ah, 06h  
        mov al, 00h
        mov bh,82h 
        mov ch,00  
        mov cl,00  
        mov dh,25d 
        mov dl,80d 
        int 10h
     
        print 'Ingrese el numero en kilogramos: ', '$' ;Se imprime el mensaje para escribir en kilogramos
        
        mov var_m, 1000     ;Se mueve a var_m 1000
        jmp multiplicacion_m ;Se salta a multiplicacion_m        
                          
    kilogramol:

        Call clear_screen 
        mov ah, 06h  
        mov al, 00h
        mov bh,82h 
        mov ch,00  
        mov cl,00  
        mov dh,25d 
        mov dl,80d 
        int 10h
     
        print 'Ingrese el numero en kilogramos: ', '$' ;Se imprime el mensaje para escribir en kilogramos
        
        mov var_m, 2  ;Se mueve a var_m 2
        jmp multiplicacion_m  ;Se salta a multiplicacion_m
    
    
    librag:

        Call clear_screen 
        mov ah, 06h  
        mov al, 00h
        mov bh,82h 
        mov ch,00  
        mov cl,00  
        mov dh,25d 
        mov dl,80d 
        int 10h
        
        print 'Ingrese el numero en libras: ', '$'  ;Se imprime el mensaje para escribir en libras
        
        mov var_m, 454  ;Se mueve a var_m 454
        jmp multiplicacion_m ;se salta a multiplicacion_m
    
    librak:
    
        call clear_screen
 
        mov ah, 06h  
        mov al, 00h
        mov bh,82h 
        mov ch,00  
        mov cl,00  
        mov dh,25d 
        mov dl,80d 
        int 10h
        
        print 'Ingrese el numero en libras: ','$'  ;Se imprime el mensaje para escribir en libras
        
        mov var_m, 2   ;Se mueve a var_m un 2
        jmp division_m ; Se salta a division_m
            
     division_m:      
        mov dx,0   ;Se limpian los registros
        mov ax,0
        mov bx,0
        mov cx,0 
        
        call SCAN_NUM   ;Se llama scan_num para digitar un numero
        mov num1_division_m, cx  ;Se mueve el numero de cx a num1_division_m
        
        mov dx,0  ; Se limpian los registros
        mov ax,0
        mov bx,0
        mov cx,0  
        
        mov bx, var_m ;Se mueve a bx, var_m
        
        mov num2_division_m, bx ;se bx mueve a num2_division_m
        
        xor ax, ax  ;Se limpia ax
        
        mov dx, 0   ;Se limpia dx
        mov ax, num1_division_m  ;se mueve a ax, num1_division_m
        idiv num2_division_m   ;Se divide lo que hay en ax por num2:division_m
        cmp dx, 0    ;se compara dx con 0
        jnz decimales_division_m  ; Salta si no es igual o si no es cero 
        
        PUTC 10   ;Salto de linea
        PUTC 13
        print 'El resultado es: ', '$' ;Se imprime el mensaje para dar el resultado

        call PRINT_NUM   ;Se llama a call_num para imprimir el resultado
               
        jmp salir_m  ;Se salta a salir_m          
        
        decimales_division_m: 
        
        PUTC 10    ;salto de linea
        PUTC 13
        print 'El resultado es: ', '$' ;Se imprime el mensaje para dar el resultado
        
        mov resultado_division_m, ax   ;Se mueve a resultado_division_m el valor de ax
        mov ax, resultado_division_m   ;Se mueve nuevamente el varlor de resultado_division_m a ax
        call PRINT_NUM   ;Se llama a print_num para imprimir el resultado
        
        mov dx,0    ;Se limpian los registros
        mov ax,0
        mov bx,0
        mov cx,0 
        
        print ' y unos decimales...', '$' ;Se imprime el mensaje (y unos decimales) porque en este caso hay algunos decimales en el resultado
        
       jmp salir_m  ;Se salta a salir_m

        
     Multiplicacion_m:      
        mov dx,0  ;Se limpian los regitros
        mov ax,0
        mov bx,0
        mov cx,0 
        
        call SCAN_NUM     ;Se llama a scan_num para digitar el numero a analizar
        mov num1_multiplicacion_m, cx
        
        mov dx,0 ;Se limpian los registros
        mov ax,0
        mov bx,0
        mov cx,0  

        mov bx, var_m   ;Se mueve var_m a bx
        
        xor ax, ax ;Se limpa ax
        
        mov dx, 0  ;se limpa dx
        mov ax, num1_multiplicacion_m  ;Se mueve a ax el valor de num1_multiplicacion_m
        imul bx   ;Se multiplica el valor de ax por el valor de bx
        cmp dx, 0  ;Se compara dx con 0
        jnz decimales_multiplicacion_m  ;Se salta a decimales_multiplicacion_m si no es igual a cero o no es cero
        
        PUTC 10   ;Salto de linea
        PUTC 13
        print 'El resultado es: ', '$'  ;Se imprime el mensaje para dar el resultado

        call PRINT_NUM     ;Se llama a print_num para que se imprima el resultado
               
        jmp salir_m   ;Se salta a salir_m         
        
        decimales_multiplicacion_m: 
        
        PUTC 10    ;Se hace un salto de linea
        PUTC 13
        print 'El resultado es: ', '$'   ;Se imprime el mensaje para dar el resultado
        
        mov resultado_division_m, ax   ;Se mueve a resultado_division_m el valor de ax
        mov ax, resultado_division_m   ;Se mueve nuevamente a ax el valor de resultado_division_m
        call PRINT_NUM    ;Se llama a print_num para imprimir el valor del resultado
        
        mov dx,0    ;Se limpian los registros
        mov ax,0
        mov bx,0
        mov cx,0 
        
        print ' y unos decimales...', '$'    ;Se imprime el mensaje (y unos decimales) porque en este resultado hay decimales irrepresentables
        
        jmp salir_m ;Se salta a salir_m
        

         
        salir_m:
            mov ah, 0 ;Espera por una tecla
            int 16h
        
            Call clear_screen ;Se limpia la pantalla, se limpian los registros, se limpia var_m y se salta a masas
            MOV AX,0
            MOV DX, 0
            MOV BX, 0
            MOV CX, 0
            MOV si, 0 
 
            mov var_m,0
        
            jmp masas 
          
              
              
                                 ;CODIGO DE CONVERSION EN UNIDADES MONETARIAS
                              
             ;Cambios monetarios segun el dia
             lunes:                   ;cambio segun el lunes 618
        
                mov moneda, 618
                jmp decision         
           
             miercoles:           ;cambio segun miercoles 605
             
                
                mov moneda, 605
                jmp decision   
        
        
             Sabado:             ;cambios segun sabado 630
                
                mov moneda, 630
                jmp decision 
                            
          
            decision: 
                Call clear_screen    ;se limpia la pantalla
                 
                mov ah, 06h;   
                mov al, 00h;
                mov bh,91h ; 
                mov ch,00  ;   se cambia de color los colores del fondo y letra de la consola.
                mov cl,00  ; 
                mov dh,25d ; 
                mov dl,80d ;
                int 10h 
        
                LEA dx, msg7_decision ;mensaje elegir modo e conversion
                mov ah, 9
                int 21h 
                printn ""
                printn ""
                
                LEA dx, msg1_dolar_colon ; mensaje pasar de dolares a colones
                mov ah, 9
                int 21h       
                printn ""
                printn "" 
        
                LEA dx, msg2_colon_dolar ;mensaje pasar  de colones a dolares
                mov ah, 9
                int 21h       
                printn ""
                printn ""
                
          
            ciclinin:
        
                mov ax,1    ;muestra mouse en la consola 
                int 33h
                    
                mov ax, 3   ;interrupcion requerida para que envie posiciones del mouse.
                int 33h
                
                cmp dx, 35  ;se compara coordenada y con 35 para acceder a opcion pasar dolares a colones
                je dolarC
                
                cmp dx, 60  ;se compara coordenada y con 60 para realizar la operacion de colones a dolares.
                je colonD        
                
                jmp ciclinin
        
        
            dolarC:
                
                Call clear_screen 
                
                mov ah, 06h  ;
                mov al, 00h  ;
                mov bh,91h   ;
                mov ch,00    ; se cambia de color los colores del fondo y letra de la consola.
                mov cl,00    ;
                mov dh,25d   ;
                mov dl,80d   ;
                int 10h      ;  
                
                print 'Ingrese los dolares: ','$'
                
                jmp multiplicacion_d   ; se salta a etiqueta multiplicacion de dolares a colones
                                          
        
            colonD:
        
                Call clear_screen 
                
                mov ah, 06h  
                mov al, 00h
                mov bh,91h 
                mov ch,00     ; se cambian los colores del fondo y de la letra.
                mov cl,00  
                mov dh,25d 
                mov dl,80d 
                int 10h        
                
                print 'Ingrese los colones: ','$'
                
                jmp division_d 
            
        
             division_d: ;division pasar de colones a dolares     
                mov dx,0
                mov ax,0
                mov bx,0 ;limpiar registros
                mov cx,0 
                
                call SCAN_NUM
                mov num1_moneda_division, cx ;se lee el primer numero
                
                mov dx,0
                mov ax,0   ;se limpian registros
                mov bx,0
                mov cx,0  
                
                mov bx, moneda ;se mueve variable moneda a dx
                
                mov num2_moneda_division, bx   ; se mueve el valor de bx a la variable num2_moneda_division
                
                xor ax, ax
                
                mov dx, 0
                mov ax, num1_moneda_division
                idiv num2_moneda_division    ;division del num1 entre num2
                cmp dx, 0                    ;se compara resultado dx con 0
                jnz decimales_moneda_division ;en caso de no ser 0 se salta a etiqueta decimales_moneda_divison
                
                printn "" ;se realiza un salto de linea
                print 'El resultado es: ', '$' ; se imprime el resultado directamente
        
                call PRINT_NUM 
                       
                jmp exit_d ;salta a etiqueta salida           
                
                decimales_moneda_division: 
                
                printn "" ;se realiza un salto de linea
                print 'El resultado es: ', '$'
                
                mov resultado_moneda_division, ax   ;se mueve resultadode ax a variable para respaldar 
                mov ax, resultado_moneda_division   ;se mueve variable a ax
                call PRINT_NUM                      ;se imprime el resultado
                
                mov dx,0
                mov ax,0  ;se limpian registros
                mov bx,0
                mov cx,0 
                
                print ' y unos decimales...', '$'  ;se imprime que posee parte puntoflotante.
                
               jmp exit_d    ;se salta a la salida
        
                
             Multiplicacion_d:  ;multiplicacion de dolares a colones    
                mov dx,0
                mov ax,0   ;se limpian registros
                mov bx,0
                mov cx,0 
                
                call SCAN_NUM            ;se escanea numero
                mov num1_moneda_multiplicacion, cx   ;se mueve numero a variable
                
                mov dx,0
                mov ax,0      ;se limpian regisros
                mov bx,0
                mov cx,0  
        
                mov bx, moneda   ;se mueve tipo de cambio a bx
                
                mov ax, 0
                
                mov dx, 0
                mov ax, num1_moneda_multiplicacion  ;se mueve cantidad de dolares a ax
                imul bx                             ;se multiplica cantidad de dolares por tipo de cambio
                cmp dx, 0                            ;se compara con 0
                jnz decimales_moneda_multiplicacion  ;sino es 0 significa que posee decimales
                
                printn "" ;salto de linea
                print 'El resultado es: ', '$' ;se imprime el resultado
        
                call PRINT_NUM  ;se imprime el resultado
                       
                jmp exit_d   ;se salta al final de la tarea         
                
                decimales_moneda_multiplicacion: ;etiqueta en caso de que posea decimales la multiplicacion
                
                printn "" ;salto de linea
                print 'El resultado es: ', '$'
                
                mov resultado_moneda_division, ax  ;se mueve valor ax a variable resultado_moneda_divison
                mov ax, resultado_moneda_division  ;se mueve variable resultado a ax
                call PRINT_NUM                     ;se imprime resultado
                
                mov dx,0
                mov ax,0
                mov bx,0   ;se limpian los registros.
                mov cx,0 
                
                print ' y unos decimales...', '$' ;se imprime que resultado posee decimales punto flotante.      
                 
                exit_d:
                    mov ah, 0 ;Espera por una tecla
                    int 16h
         
                    mov moneda,0 ;Limpia el registro de la moneda
                
                    jmp dinero       
        
              
        
              
                      ;CODIGO EDITOR DE TEXTO Y ARCHIVOS
                

                texto_archivos:
                                         
            Call clear_screen   ;
            MOV AX,0            ;
            MOV DX, 0           ;>Cada vez que se vean estas lineas es para refrescar los registros
            MOV BX, 0           ;>y limpiar la pantalla
            MOV CX, 0           ;
            MOV si, 0 
            
            imprime msj   ;
            imprime msj2  ;
            imprime msj3  ; Imprime mensaje
            imprime msj4  ;
            imprime msj5  ;
            imprime msj6  ;

            mov ah,0dh  ;cred
            int 21h
            
            mov ah,01h  ;Habilita la opcion de digitar un numero
            int 21h
            
            cmp al,31h
            je crear      ; comparacion numero digitado
            cmp al,32h
            je abrir      ; comparacion numero digitado
            cmp al,33h
            je pedir      ; comparacion numero digitado
            cmp al,34h
            je eliminar  ;  comparacion numero digitado
            cmp al,35h
            je MENU
            
            crear:
            call clear_screen  ;limpia el menu
            ; Crear
            mov ah,3ch              ;
            mov cx,0                ;crea el menu y le manda el nombre de la variable
            mov dx,offset nombre    ;
            int 21h                 ;
            jc salir_a
            imprime msjcrear  ;imprime un mensaje
            mov bx,ax
            mov ah,3eh     ;cierra el archivo
            int 21h
            jmp salir_a
            
            abrir:
            call clear_screen
            ; Abrir
            mov ah,3dh ;abre el archivo
            mov al,0h
            mov dx,offset nombre  ;con este nombre
            int 21h
            
            mov bx,ax ;mueve a bx lo que esta en ax
            
            mov ah,3fh   ;lee el archivo

            
            mov cx,50 ;se pasa un 50 a cx
            mov dx,offset vec ;se pasa
            int 21h      ;
            mov ah,09h   ;Muestra el contenido
            int 21h      ;
            
            mov ah,3eh
            int 21h      ; Cierre de archivo
            jmp salir_a
            
            
            pedir:
            mov ah,01h  ; activa lo de escribir
            int 21h
            mov vec[si],al ; mueve a la posicion de vec[si] una al
            inc si      ;incrementa si
            cmp al,0dh  ;compara al con dh
            
            ja pedir ;Salto corto si el primer operando esta por encima del segundo operando
            jb pedir ;Salto corto si el primer operando esta por debajo del segundo operando
            
            editar:
            ; Abrir
            mov ah,3dh  ;Abre el archivo
            mov al,1h    ;Habilita la escritura
            mov dx,offset nombre ;nombre del archivo
            int 21h
            jc salir_a
            ; Escritura de archivo
            printn '' 
            mov bx,ax    ;mueve lo de ax a bx
            mov cx,si    ;mueve a cx lo de si
            mov dx,offset vec ;mueve el contenido de la variable a dx
            mov ah,40h        ;instruccion para escribir un archivo
            int 21h
            mov handle,bl    ;mueve a handle lo que hay en la variable dl
            mov bx,ax     ;mueve a bx lo que hay en ax
            imprime msjescr
            mov ax,bx      ;mueve a ax lo de bx
            cmp cx,ax      ;comprara lo de cx con ax
            jne salir_a 
            
            mov ah,3eh    ; cierra el archivo
            mov bl,handle ;mueve a dl lo de handle
            int 21h
            jmp salir_a
            
            eliminar:
            call clear_screen
            ; Cierre de archivo
            mov ah,3eh
            int 21h
            ; Eliminar archivo
            mov ah,41h    ;eliminar el archivo
            mov dx,offset nombre ;con su respectivo nombre
            int 21h
             imprime msjelim
            jc salir_a
            
            salir_a:
            mov ah, 0 ;Espera por una tecla
             int 16h   
             jmp texto_archivos
              
              
              
              
                      
                    
             

DEFINE_CLEAR_SCREEN ;Limpia la pantalla                                          
DEFINE_GET_STRING ;Obtiene un string                     
DEFINE_PRINT_STRING ;Permite imprimir strings                     
DEFINE_SCAN_NUM      ;permite leer numeros del teclado
DEFINE_PRINT_NUM     ;permite imprimir un numero
DEFINE_PRINT_NUM_UNS ;se requiere para imprimir el numero
  
  


Imprimir_cosas PROC NEAR  ;Este procedimiento se encarga de imprimir lo que sigue de la llamada
MOV     CS:respaldo_prints, SI  ; Lo guarda en el registro SI
POP     SI            ; Devuelve la direccion IP
PUSH    AX            ; Lo guarda en el registro AX
next_char:      
        MOV     AL, CS:[SI]
        INC     SI            ; Siguiente byte.
        CMP     AL, 0
        JZ      printed_ok
        MOV     AH, 0Eh       ;Funcion para imprimir
        INT     10h
        JMP     next_char     ;Ciclo.
printed_ok:
POP     AX            ;Re-guarda el registro AX    

;SI deberia apuntar a el siguiente comando despues 
;La llamada de la intruccion y la definicion del string:

PUSH    SI            ;Guarda la nueva direccion al stack
MOV     SI, CS:respaldo_prints  ;Re-guarda el registro SI
RET
respaldo_prints  DW  ?    ;Variable que guarda el valor original de el registro SI variable
ENDP

     


TAB EQU 9   ;Aplica un tab para conseguir un espaciado    
imprime macro cadena
mov ah,09
mov dx,offset cadena ;macro con los codigos para imprimir
int 21h
endm     
     
salir:
            print 'adios';
            mov ah,4ch   ;}Sale del codigo
            int 21h      ;
                     
end  
