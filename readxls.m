function readxls()
global A;
global set;
global area;
global count


           
            count=1;
            m=3;
            n=10000;
            set= ones (n,m);
            
             data= xlsread('Book1.xlsx');
            
            
            for i= 2:+1:33
              for j= 2:+1:28
                  area = data(i,j);
                   b= area-A;
                  if(b>0) && (b<0.5)
                      set(count,1)= area;
                      set(count,2)= data(1,j);      %thickness
                      set(count,3)=data(i,1);
                      count=count+1;
                  end
              end
            end
            
           
           
           

end