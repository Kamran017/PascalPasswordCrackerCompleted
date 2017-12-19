//pt->password type
//ct->character type
//pv->password variable
//cv->character variable
//cp->create password
//rv->random variable
program passwordProgram;
uses sysutils,Crt;
var password,finded,randomString: string;
    passwordType:array[1..100]of string;
    characterType:array[1..100]of string;
    lwc: array [1..36] of string = ('a', 'b', 'c', 'd' , 'e', 'f', 'g ','h','i ','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9');
    upc:array[1..62] of string=('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a', 'b', 'c', 'd' , 'e', 'f', 'g ','h','i ','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9');
    pt,ct,pv,cv,cp,rv,r,min,max,ss,dd,ff,gg,hh,qq,ww,ee,w:integer;
    j,k,l,m,n,jj,kk,ll:char;
    Start,Stop:TDateTime;
begin
textcolor(lightgreen);
Randomize;
  //declare elements of passwordType array
  passwordType[1]:='1: weak(4)';
  passwordType[2]:='2: medium(6)';
  passwordType[3]:='3: strong(8)';
  //declare elements of characterType array
  characterType[1]:='1: only digit';
  characterType[2]:='2: only lowercase letters';
  characterType[3]:='3: both lowercase letters and digits';
  characterType[4]:='4: lowercase letters, digits and uppercase letters';
  //user select the password type
  writeln('Please select the password type:');
  writeln();
  //writeln() password types
  for pv:=1  to 3 do
   begin
     writeln(passwordType[pv])
   end;
  //read password type
  writeln();
  readln(pt);
  writeln();

  //user enter the character type
  writeln('Please select the character type:');
  writeln();
  for cv:=1  to 4 do
   begin
     writeln(characterType[cv])
   end;
  writeln();
  readln(ct);
  writeln();
  //ask user for creating password
  writeln('If you want to create password enter 1, otherwise enter 2');
  writeln();
  readln(cp);
  writeln();
  //create password
  if cp=1 then
   begin
     if pt=1 then
      begin
        if ct=1 then
         begin
           readln(password);
         end
        else if ct=2 then
         begin
           readln(password);
         end
        else if ct=3 then
         begin
           readln(password);
         end
        else if ct=4 then
         begin
           readln(password);
         end;
        if length(password)<>4 then
         begin
           repeat
             writeln('Please enter 4 digit password');
             readln();
           until length(password)=4;
         end;
      end
     else if pt=2 then
      begin
        if ct=1 then
         begin
           readln(password);
         end
        else if ct=2 then
         begin
           readln(password);
         end
        else if ct=3 then
         begin
           readln(password);
         end
        else if ct=4 then
         begin
           readln(password);
         end;
        if length(password)<>6 then
         begin
           repeat
             writeln('Please enter 6 digit password');
             readln();
           until length(password)=6;
         end;
      end
     else if pt=3 then
      begin
        if ct=1 then
         begin
           readln(password);
         end
        else if ct=2 then
         begin
           readln(password);
         end
        else if ct=3 then
         begin
           readln(password);
         end
        else if ct=4 then
         begin
           readln(password);
         end;
        if length(password)<>8 then
         begin
           repeat
             writeln('Please enter 8 digit password');
             readln();
           until length(password)=8;
         end;
      end
   end
  //Creating random password
  else if cp=2 then
   begin
    //weak password type
    if pt=1 then
     begin
      if ct=1 then
       begin
         for rv:=1 to 4 do
          begin
            min:=48;
            max:=57;
            r:=random((max-min)+1)+min;
            write(char(r));
            randomString:=randomString + char(r);
          end;
       end
     else if ct=2 then
       begin
         for rv:=1 to 4 do
          begin
            min:=97;
            max:=122;
            r:=random((max-min)+1)+min;
            write(char(r));
            randomString:=randomString + char(r);
          end;
       end
     else if ct=3 then
       begin
         for rv:=1 to 4 do
          begin
           r:=random(length(lwc));
           randomString:=randomString + lwc[r];
           write(lwc[r]);
          end;
       end
     else if ct=4 then
       begin
         for rv:=1 to 4 do
          begin
            min:=48;
            max:=122;
            r:=random(length(upc));
            write(upc[r]);
            randomString:=randomString + upc[r];
          end;
       end ;
     end
    //medium password type
    else  if pt=2 then
     begin
      if ct=1 then
       begin
         for rv:=1 to 6 do
          begin
            min:=48;
            max:=57;
            r:=random((max-min)+1)+min;
            write(char(r));
            randomString:=randomString + char(r);
          end;
       end
     else if ct=2 then
       begin
         for rv:=1 to 6 do
          begin
            min:=97;
            max:=122;
            r:=random((max-min)+1)+min;
            write(char(r));
            randomString:=randomString + char(r);
          end;
       end
     else if ct=3 then
       begin
         for rv:=1 to 6 do
          begin
           r:=random(length(lwc));
           randomString:=randomString + lwc[r];
           write(lwc[r]);
          end;
       end
     else if ct=4 then
       begin
         for rv:=1 to 6 do
          begin
            min:=48;
            max:=122;
            r:=random(length(upc));
            write(upc[r]);
            randomString:=randomString + upc[r];
          end;
       end ;
     end
    //strong password type
    else if pt=3 then
     begin
      if ct=1 then
       begin
         for rv:=1 to 8 do
          begin
            min:=48;
            max:=57;
            r:=random((max-min)+1)+min;
            write(char(r));
            randomString:=randomString + char('r');
          end;
       end
     else if ct=2 then
       begin
         for rv:=1 to 8 do
          begin
            min:=97;
            max:=122;
            r:=random((max-min)+1)+min;
            write(char(r));
            randomString:=randomString + char(r);
          end;
       end
     else if ct=3 then
       begin
         for rv:=1 to 8 do
          begin
           r:=random(length(lwc));
           write(lwc[r]);
           randomString:=randomString + lwc[r];
          end;
       end
     else if ct=4 then
       begin
         for rv:=1 to 8 do
          begin
            min:=48;
            max:=122;
            r:=random(length(upc));
            write(upc[r]);
            randomString:=randomString + upc[r];
          end;
       end ;
     end;
   end;
   writeln();
   // program start for finding the password
   Start := Now;
   w:=0;
   if cp=2 then
     password:=randomString;
  if ct=1 then
    begin
     while finded<>password do
      begin
       if length(password)=4 then
         begin
          for j:='0' to '9' do
           begin
             if finded=password then
             break;
             for k:='0' to '9' do
              begin
               if finded=password then
                break;
                for l:='0' to '9' do
                 begin
                  if finded=password then
                    break;
                  for m:='0' to '9' do
                   begin
                     if finded=password then
                      break;
                    finded:=char(j)+char(k)+char(l)+char(m);
                    write(finded);
                    w:=w+1;
                   end;
                 end;
               end;
             end;
           end
    else if length(password)=6 then
    begin
      for j:='0' to '9' do
       begin
         if finded=password then
          break;
         for k:='0' to '9' do
         begin
          if finded=password then
           break;
           for l:='0' to '9' do
            begin
             if finded=password then
               break;
             for m:='0' to '9' do
              begin
               if finded=password then
                break;
                 for jj:='0' to '9' do
                  begin
                   if finded=password then
                    break;
                   for kk:='0' to '9' do
                    begin
                     if finded=password then
                      break;
                     finded:=char(j)+char(k)+char(l)+char(m)+char(jj)+char(kk);
                     write(finded);
                     w:=w+1;
                    end;
                  end;
              end;
            end;
        end;
       end;
    end
    else if length(password)=8 then
                begin
                 for j:='0' to '9' do
                  begin
                    if finded=password then
                    break;
                    for k:='0' to '9' do
                     begin
                      if finded=password then
                       break;
                       for l:='0' to '9' do
                        begin
                         if finded=password then
                           break;
                         for m:='0' to '9' do
                          begin
                            if finded=password then
                             break;
                            for n:='0' to '9' do
                             begin
                               if finded=password then
                                break;
                               for jj:='0' to '9' do
                                begin
                                 if finded=password then
                                  break;
                                 for kk:='0' to '9' do
                                  begin
                                   if finded=password then
                                    break;
                                   for ll:='0' to '9' do
                                    begin
                                     finded:=char(j)+char(k)+char(l)+char(m)+char(n)+char(jj)+char(kk)+char(ll);
                                     write(finded);
                                     w:=w+1;
                                    end;
                                  end;
                                end;
                             end;
                          end;
                        end;
                      end;
                    end;
                  end
     end;
    end
    else if  ct=2 then
    begin
     if length(password)=4 then
     begin
       while finded<>password do
        begin
           for j:='a' to 'z' do
           begin
             if finded=password then
             break;
             for k:='a' to 'z' do
              begin
               if finded=password then
                break;
                for l:='a' to 'z' do
                 begin
                  if finded=password then
                    break;
                  for m:='a' to 'z' do
                   begin
                     if finded=password then
                      break;
                    finded:=char(j)+char(k)+char(l)+char(m);
                    write(finded);
                    w:=w+1;
                   end;
                 end;
               end;
             end;
        end;
       end
     else if length(password)=6 then
      begin
       for j:='a' to 'z' do
        begin
          if finded=password then
           break;
          for k:='a' to 'z' do
          begin
           if finded=password then
            break;
            for l:='a' to 'z' do
             begin
              if finded=password then
                break;
              for m:='a' to 'z' do
               begin
                if finded=password then
                 break;
                  for jj:='a' to 'z' do
                   begin
                    if finded=password then
                     break;
                    for kk:='a' to 'z' do
                     begin
                      if finded=password then
                       break;
                       finded:=char(j)+char(k)+char(l)+char(m)+char(jj)+char(kk);
                       write(finded);
                       w:=w+1;
                     end;
                   end;
               end;
             end;
         end;
       end;
      end
     else if length(password)=8 then
      begin
        for j:='a' to 'z' do
         begin
           if finded=password then
            break;
           for k:='a' to 'z' do
            begin
             if finded=password then
              break;
              for l:='a' to 'z' do
               begin
                if finded=password then
                  break;
                for m:='a' to 'z' do
                 begin
                  if finded=password then
                   break;
                    for jj:='a' to 'z' do
                     begin
                      if finded=password then
                       break;
                      for kk:='a' to 'z' do
                       begin
                        if finded=password then
                         break;
                         for n:='a' to 'z' do
                           begin
                            if finded=password then
                             break;
                             for ll:='a' to 'z' do
                               begin
                                if finded=password then
                                 break;
                                   finded:=char(j)+char(k)+char(l)+char(m)+char(jj)+char(kk)+char(n)+char(ll);
                                   write(finded);
                                   w:=w+1;
                               end;
                           end;
                       end;
                     end;
                 end;
               end;
           end;
         end;
      end;
    end

    else if  ct=3 then
      begin
       while finded<>password do
          begin
         //for weak password type
         if length(password)=4 then
          begin
               for ss:=1 to length(lwc) do
               begin
                 if finded=password then
                 break;
                 for dd:=1 to length(lwc) do
                  begin
                   if finded=password then
                    break;
                    for ff:=1 to length(lwc) do
                     begin
                      if finded=password then
                        break;
                      for gg:=1 to length(lwc) do
                       begin
                         if finded=password then
                          break;
                        finded:=lwc[ss]+lwc[dd]+lwc[ff]+lwc[gg];
                        write(finded);
                        w:=w+1;
                       end;
                     end;
                   end;
                 end;
             end
           // for medium password type
           else  if length(password)=6 then
            begin
             while finded<>password do
              begin
                 for ss:=1 to length(lwc) do
                 begin
                   if finded=password then
                   break;
                   for dd:=1 to length(lwc) do
                     begin
                      if finded=password then
                      break;
                      for ff:=1 to length(lwc) do
                       begin
                        if finded=password then
                         break;
                        for gg:=1 to length(lwc) do
                         begin
                           if finded=password then
                            break;
                           for hh:=1 to length(lwc) do
                            begin
                             if finded=password then
                              break;
                             for qq:=1 to length(lwc) do
                              begin
                               if finded=password then
                                 break;
                                finded:=lwc[ss]+lwc[dd]+lwc[ff]+lwc[gg]+lwc[hh]+lwc[qq];
                                write(finded);
                                w:=w+1;
                              end;
                            end;
                         end;
                        end;
                     end;
                   end;
                 end;
               end
           //for strong password type
           else  if length(password)=8 then
            begin
             while finded<>password do
              begin
                 for ss:=1 to length(lwc) do
                 begin
                   if finded=password then
                   break;
                   for dd:=1 to length(lwc) do
                     begin
                      if finded=password then
                      break;
                      for ff:=1 to length(lwc) do
                       begin
                        if finded=password then
                         break;
                        for gg:=1 to length(lwc) do
                         begin
                           if finded=password then
                            break;
                           for hh:=1 to length(lwc) do
                            begin
                             if finded=password then
                              break;
                             for qq:=1 to length(lwc) do
                              begin
                               if finded=password then
                                 break;
                               for ww:=1 to length(lwc) do
                                begin
                                 if finded=password then
                                  break;
                                 for ee:=1 to length(lwc) do
                                   begin
                                    if finded=password then
                                     break;
                                     finded:=lwc[ss]+lwc[dd]+lwc[ff]+lwc[gg]+lwc[hh]+lwc[qq]+lwc[ww]+lwc[ee];
                                     write(finded);
                                     w:=w+1;
                                   end;
                                end;
                              end;
                            end;
                         end;
                        end;
                     end;
                   end;
                 end;
               end
           end;
          end
        else if  ct=4 then
        begin
         while finded<>password do
          begin
         //for weak password type
         if length(password)=4 then
          begin
               for ss:=1 to length(upc) do
               begin
                 if finded=password then
                 break;
                 for dd:=1 to length(upc) do
                  begin
                   if finded=password then
                    break;
                    for ff:=1 to length(upc) do
                     begin
                      if finded=password then
                        break;
                      for gg:=1 to length(upc) do
                       begin
                         if finded=password then
                          break;
                        finded:=upc[ss]+upc[dd]+upc[ff]+upc[gg];
                        write(finded);
                        w:=w+1;
                       end;
                     end;
                   end;
                 end;
             end
           // for medium password type
           else  if length(password)=6 then
            begin
             while finded<>password do
              begin
                 for ss:=1 to length(upc) do
                 begin
                   if finded=password then
                   break;
                   for dd:=1 to length(upc) do
                     begin
                      if finded=password then
                      break;
                      for ff:=1 to length(upc) do
                       begin
                        if finded=password then
                         break;
                        for gg:=1 to length(upc) do
                         begin
                           if finded=password then
                            break;
                           for hh:=1 to length(upc) do
                            begin
                             if finded=password then
                              break;
                             for qq:=1 to length(upc) do
                              begin
                               if finded=password then
                                 break;
                                finded:=upc[ss]+upc[dd]+upc[ff]+upc[gg]+upc[hh]+upc[qq];
                                write(finded);
                                w:=w+1;
                              end;
                            end;
                         end;
                        end;
                     end;
                   end;
                 end;
               end
           //for strong password type
           else  if length(password)=8 then
            begin
             while finded<>password do
              begin
                 for ss:=1 to length(upc) do
                 begin
                   if finded=password then
                   break;
                   for dd:=1 to length(upc) do
                     begin
                      if finded=password then
                      break;
                      for ff:=1 to length(upc) do
                       begin
                        if finded=password then
                         break;
                        for gg:=1 to length(upc) do
                         begin
                           if finded=password then
                            break;
                           for hh:=1 to length(upc) do
                            begin
                             if finded=password then
                              break;
                             for qq:=1 to length(upc) do
                              begin
                               if finded=password then
                                 break;
                               for ww:=1 to length(upc) do
                                begin
                                 if finded=password then
                                  break;
                                 for ee:=1 to length(upc) do
                                   begin
                                    if finded=password then
                                     break;
                                     finded:=upc[ss]+upc[dd]+upc[ff]+upc[gg]+upc[hh]+upc[qq]+upc[ww]+upc[ee];
                                     write(finded);
                                     w:=w+1;
                                   end;
                                end;
                              end;
                            end;
                         end;
                        end;
                     end;
                   end;
                 end;
               end
           end;
          end;
    Stop := Now; // program end
    writeln();
    textcolor(lightred);
    writeln('Finded password equal to :', finded);
    writeln();
    writeln('Attempt:' ,w);
    writeln();
    writeln(FormatDateTime('hh.nn.ss.zzz', Stop-Start), '  time taken');
readln();
end.

