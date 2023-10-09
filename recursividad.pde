void setup()
{
size(400,400);
smooth();
}

void draw()
{
background(155);
//Se llama a una función que dibujará círculos recibe
//como argumento, la posición x, posición y, lado del //cuadrado inicial.
DibujarCirculos(width/2,height/2,200);
}

//Función que realiza el dibujo
void DibujarCirculos(float x, float y, float lado)
{
rect(x, y, lado, lado);

//Mediante este condicional se produce la recursividad
//como se observa se va reduciendo el tamaño de los cuadrados
//hasta cumplir el condicional
if(lado > 8)
{
DibujarCirculos(x + lado/2, y, lado/2);
DibujarCirculos(x - lado/2, y, lado/2);
DibujarCirculos(x, y + lado/2, lado/2);
DibujarCirculos(x, y - lado/2, lado/2);
}
}
