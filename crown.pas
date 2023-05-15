uses GraphABC;
begin 
SetPenColor(clblack);
MoveTo(200, 300);
Line(200, 300, 400,300);
Line(400, 300, 475,125);
Line(475, 125, 340,260);
Line(260, 260, 125,125);
Line(125, 125, 200,300);
MoveTo(250, 300);
Line(250, 300, 300,75);
Line(300, 75, 350,300);
FloodFill(200, 250, clBlue);
FloodFill(300, 200, clRed);
FloodFill(400, 250, clLime);
Circle(300, 75, 25);
FloodFill(300, 75, clRed);
Circle(125, 125, 25);
FloodFill(125, 125, clBlue);
Circle(475, 125, 25);
FloodFill(475, 125, clLime);
end.
