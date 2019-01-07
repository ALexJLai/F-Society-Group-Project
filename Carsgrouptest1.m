function Carsgrouptest1()


axis equal
xlim([0 10])
ylim([0 5])



car = hgtransform;
rectangle('position',[4 0 1 1],'facecolor', 'b','parent',car) ;

car2 = hgtransform;
rectangle('position',[0 0 3 1],'facecolor', 'b','parent',car2) ;



pt1 = [10 1 0];
pt2 = [0 1 0];

pt1_2 = [10 2  0];
pt2_2 = [0 2 0];


for  R = 1:1000
    
    for t=linspace(0,1,200)
        
        car.Matrix = makehgtform('translate',pt1 + t*(pt2-pt1))
        car2.Matrix = makehgtform('translate',pt1_2 + t*(pt2_2-pt1_2))
        
        
        drawnow
        
        
        
        if t == 0
            
            for t=linspace(0,1,200)
                
                car.Matrix = makehgtform('translate',pt1 + t*(pt2-pt1))
                car2.Matrix = makehgtform('translate',pt1_2 + t*(pt2_2-pt1_2))
                
                
                drawnow
                
            end
            
        end
        
    end
    
end

end