% create panel
f = figure;
panel = uipanel(f, "title", "Menu");
 
e1 = uicontrol(f, "style", "text", "string", "Dane: ", "position" , [20 340 50 40]);
e11 = uicontrol(f, "style", "edit","position", [80 340 300 40]);
 
e1 = uicontrol(f, "style", "text", "string", "Typy bledow: ", "position" , [20 300 95 40]);
 
e1 = uicontrol(f, "style", "checkbox", "position", [20 265 25 25]);
e12 = uicontrol(f, "style", "text", "string", "Okresowe: ", "position" , [45 260 79 40]);
e13 = uicontrol(f, "style", "slider", "position", [165 275 100 10]);
 
e2 = uicontrol(f, "style", "checkbox", "position", [20 225 25 25]);
e22 = uicontrol(f, "style", "text", "string", "Cykliczne: ", "position" , [45 220 79 40]);
e23 = uicontrol(f, "style", "slider", "position", [165 235 100 10]);
 
e3 = uicontrol(f, "style", "checkbox", "position", [20 185 25 25]);
e32 = uicontrol(f, "style", "text", "string", "Systematyczne: ", "position" , [45 180 120 40]);
e33 = uicontrol(f, "style", "edit", "position", [165 187 100 25]);
%buttons
but1 = uicontrol(f, "string", "Send","position", [20 135 50 40]);
