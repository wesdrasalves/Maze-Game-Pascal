Program Labirintos;
 Uses
  crt;

 Const
     p1= 1;
     p2= 2;
     Boneco= #2;
 var
   nivel,x,y: integer;
   botao: char;
   Labirinto: array[1..20,6..31] of char;

  Procedure Instrucao;
   Begin
     gotoxy(7,2);Writeln('Instrucoes e detalhes do Jogo');
     Writeln('Nome do Jogo: Labirinto');
     Writeln('Desenvolvedor: Wesdras Alves Nunes');
     Writeln('Dia de Finalizacao: 17/09/2005');
     gotoxy(4,7);Writeln('Intrucao');
     Writeln('Para mover o Boneco sao os seguintes botoes');
     Writeln('4: esquerda, 6: direita, 8: cima, 2: baixo');
     gotoxy(4,11);Writeln('Objetivo');
     Writeln('Voce tem que resgatar a namorada do boneco que foi');
     Writeln('presa em um labirinto super complexo pelo Sr. ISSO');
     Writeln('Mais para isso primeiro tem que empurrar as caixas que');
     Writeln('sao representada por ',#177,' e coloca-las onde esta o "x"');
     Writeln('assim sumira uma pedra de um determinado lugar para voce');
     Writeln('poder movimentar outras caixas e assim por diante, ate');
     Writeln('que a ultima caixa seja colocada no "x" e a pedra onde');
     Writeln('esta a namorada do boneco suma e voce pode pega-la e assim');
     Writeln('mude de nivel e enfrente outros desafios.');
     Writeln(' ');
     Writeln('                *****Divita-se******');
     Writeln(            'Pressione <ENTER> comecar o jogo');

     Readln;

 end;
 { COMANDOS PARA DIREITA, ESQUERDA, CIMA E BAIXO }

 Procedure direita;
  Begin

    If Labirinto[x,y+p1]= ' ' then
     begin
      gotoxy(y,x);writeln(' ');
      inc(y);
      gotoxy(y,x);writeln(boneco);
     end

      else
        If Labirinto[x,y+p1]= #177 then
         Begin

           If Labirinto[x,y+p2]= ' ' then
            begin
              Labirinto[x,y+p2]:= #177;
              Labirinto[x,y+p1]:= ' ';
              gotoxy(y+p2,x);writeln(Labirinto[x,y+p2]);
              gotoxy(y,x);writeln(' ');
              inc(y);
              gotoxy(y,x);writeln(boneco);
            end

            else
              If Labirinto[x,y+p2]= 'x' then
                begin

                  Labirinto[x,y+p2]:= #177;
                  Labirinto[x,y+p1]:= ' ';
                  gotoxy(y+p2,x);writeln(Labirinto[x,y+p2]);
                  gotoxy(y,x);writeln(' ');
                  inc(y);
                  gotoxy(y,x);writeln(boneco);
                end;
         End;
  End;

 Procedure esquerda;
  Begin

    If Labirinto[x,y-p1]= ' ' then
     begin
      gotoxy(y,x);writeln(' ');
      dec(y);
      gotoxy(y,x);writeln(boneco);
     end

      else
        If Labirinto[x,y-p1]= #177 then
         Begin

           If Labirinto[x,y-p2]= ' ' then
            begin
              Labirinto[x,y-p2]:= #177;
              Labirinto[x,y-p1]:= ' ';
              gotoxy(y-p2,x);writeln(Labirinto[x,y-p2]);
              gotoxy(y,x);writeln(' ');
              dec(y);
              gotoxy(y,x);writeln(boneco);
            end

            else
              If Labirinto[x,y-p2]= 'x' then
                begin

                  Labirinto[x,y-p2]:= #177;
                  Labirinto[x,y-p1]:= ' ';
                  gotoxy(y-p2,x);writeln(Labirinto[x,y-p2]);
                  gotoxy(y,x);writeln(' ');
                  dec(y);
                  gotoxy(y,x);writeln(boneco);
                 end;
         End;
  End;

   Procedure cima;
  Begin

    If Labirinto[x-p1,y]= ' ' then
     begin
      gotoxy(y,x);writeln(' ');
      dec(x);
      gotoxy(y,x);writeln(boneco);
     end

      else
        If Labirinto[x-p1,y]= #177 then
         Begin

           If Labirinto[x-p2,y]= ' ' then
            begin
              Labirinto[x-p2,y]:= #177;
              Labirinto[x-p1,y]:= ' ';
              gotoxy(y,x-p2);writeln(Labirinto[x-p2,y]);
              gotoxy(y,x);writeln(' ');
              dec(x);
              gotoxy(y,x);writeln(boneco);
            end

            else
              If Labirinto[x-p2,y]= 'x' then
                begin

                  Labirinto[x-p2,y]:= #177;
                  Labirinto[x-p1,y]:= ' ';
                  gotoxy(y,x-p2);writeln(Labirinto[x-p2,y]);
                  gotoxy(y,x);writeln(' ');
                  dec(x);
                  gotoxy(y,x);writeln(boneco);
                end;
         End;
  End;

   Procedure baixo;
  Begin

    If Labirinto[x+p1,y]= #1 then
     begin
      gotoxy(y,x);writeln(' ');
      inc(x);
      gotoxy(y,x);writeln(boneco);
      nivel:= 2;
      botao:= 's';
     end

     else
      If Labirinto[x+p1,y]= ' ' then
       begin
        gotoxy(y,x);writeln(' ');
        inc(x);
        gotoxy(y,x);writeln(boneco);
       end

       else
        If Labirinto[x+p1,y]= #177 then
         Begin

           If Labirinto[x+p2,y]= ' ' then
            begin
              Labirinto[x+p2,y]:= #177;
              Labirinto[x+p1,y]:= ' ';
              gotoxy(y,x+p2);writeln(Labirinto[x+p2,y]);
              gotoxy(y,x);writeln(' ');
              inc(x);
              gotoxy(y,x);writeln(boneco);
            end

            else
              If Labirinto[x+p2,y]= 'x' then
                begin

                  Labirinto[x+p2,y]:= #177;
                  Labirinto[x+p1,y]:= ' ';
                  gotoxy(y,x+p2);writeln(Labirinto[x+p2,y]);
                  gotoxy(y,x);writeln(' ');
                  inc(x);
                  gotoxy(y,x);writeln(boneco);
                end;

         End;
  End;

  { LABIRINTOS E FASES }

 Procedure Labirinto1;
  Begin

   For x:= 1 to 20 do
   Begin
     For y:= 6 to 31 do
      begin
       Labirinto[x,y]:= ' ';
      end;
   end;

   For x:= 1 to 20 do
    begin
     Labirinto[x,6]:= #219;
     Labirinto[x,31]:= #219;
    end;

   For y:= 6 to 31 do
    begin

     Labirinto[1,y]:= #219;
     Labirinto[20,y]:= #219;
    end;

    For x:= 1 to 20 do
     begin
      case x of
        5: Labirinto[x,7]:= #219;
        6:Labirinto[x,7]:= #219;
        8:Labirinto[x,7]:= #219;
        10:Labirinto[x,7]:= #219;
        11:Labirinto[x,7]:= #219;
        14:Labirinto[x,7]:= #219;
        15:Labirinto[x,7]:= #219;
        16:Labirinto[x,7]:= #219;
       end;

      case x of
        3: Labirinto[x,8]:= #219;
        6:Labirinto[x,8]:= #219;
        7:Labirinto[x,8]:= #219;
        14:Labirinto[x,8]:= #219;
        16:Labirinto[x,8]:= #219;
        17:Labirinto[x,8]:= #219;
      end;

      case x of
        2:Labirinto[x,9]:= #219;
        4:Labirinto[x,9]:= #219;
        10:Labirinto[x,9]:= #219;
        11:Labirinto[x,9]:= #219;
        19:Labirinto[x,9]:= #219;
       end;

      case x of
        4:Labirinto[x,10]:= #219;
        5:Labirinto[x,10]:= #219;
        6:Labirinto[x,10]:= #219;
        8:Labirinto[x,10]:= #219;
        10:Labirinto[x,10]:= #219;
        13:Labirinto[x,10]:= #219;
        15:Labirinto[x,10]:= #219;
        16:Labirinto[x,10]:= #219;
        17:Labirinto[x,10]:= #219;
       end;

       case x of
        2:Labirinto[x,11]:= #219;
        5:Labirinto[x,11]:= #219;
        6:Labirinto[x,11]:= #219;
        7:Labirinto[x,11]:= #219;
        11:Labirinto[x,11]:= #219;
        18:Labirinto[x,11]:= #219;
       end;

       case x of
        4:Labirinto[x,12]:= #219;
        7:Labirinto[x,12]:= #219;
        9:Labirinto[x,12]:= #219;
        10:Labirinto[x,12]:= #219;
        14:Labirinto[x,12]:= #219;
        18:Labirinto[x,12]:= #219;
       end;

       case x of
        3:Labirinto[x,13]:= #219;
        4:Labirinto[x,13]:= #219;
        5:Labirinto[x,13]:= #219;
        11:Labirinto[x,13]:= #219;
        12:Labirinto[x,13]:= #219;
        14:Labirinto[x,13]:= #219;
        15:Labirinto[x,13]:= #219;
        16:Labirinto[x,13]:= #219;
       end;

       case x of
        3:Labirinto[x,14]:= #219;
        5:Labirinto[x,14]:= #219;
        6:Labirinto[x,14]:= #219;
        8:Labirinto[x,14]:= #219;
        9:Labirinto[x,14]:= #219;
        12:Labirinto[x,14]:= #219;
        19:Labirinto[x,14]:= #219;
       end;

       case x of
        5:Labirinto[x,15]:= #219;
        8:Labirinto[x,15]:= #219;
        9:Labirinto[x,15]:= #219;
        10:Labirinto[x,15]:= #219;
        11:Labirinto[x,15]:= #219;
        14:Labirinto[x,15]:= #219;
        15:Labirinto[x,15]:= #219;
        17:Labirinto[x,15]:= #219;
       end;

       case x of
        2:Labirinto[x,16]:= #219;
        3:Labirinto[x,16]:= #219;
        7:Labirinto[x,16]:= #219;
        13:Labirinto[x,16]:= #219;
        14:Labirinto[x,16]:= #219;
        15:Labirinto[x,16]:= #219;
        16:Labirinto[x,16]:= #219;
       end;

       case x of
        3:Labirinto[x,17]:= #219;
        4:Labirinto[x,17]:= #219;
        6:Labirinto[x,17]:= #219;
        7:Labirinto[x,17]:= #219;
        9:Labirinto[x,17]:= #219;
        10:Labirinto[x,17]:= #219;
        12:Labirinto[x,17]:= #219;
        16:Labirinto[x,17]:= #219;
        18:Labirinto[x,17]:= #219;
       end;

       case x of
        3:Labirinto[x,18]:= #219;
        6:Labirinto[x,18]:= #219;
        14:Labirinto[x,18]:= #219;
        19:Labirinto[x,18]:= #219;
       end;

        case x of
        3:Labirinto[x,19]:= #219;
        4:Labirinto[x,19]:= #219;
        6:Labirinto[x,19]:= #219;
        8:Labirinto[x,19]:= #219;
        9:Labirinto[x,19]:= #219;
        10:Labirinto[x,19]:= #219;
        11:Labirinto[x,19]:= #219;
        14:Labirinto[x,19]:= #219;
        16:Labirinto[x,19]:= #219;
        17:Labirinto[x,19]:= #219;
        19:Labirinto[x,19]:= #219;
       end;

       case x of
        2:Labirinto[x,20]:= #219;
        4:Labirinto[x,20]:= #219;
        6:Labirinto[x,20]:= #219;
        7:Labirinto[x,20]:= #219;
        9:Labirinto[x,20]:= #219;
        13:Labirinto[x,20]:= #219;
        14:Labirinto[x,20]:= #219;
        15:Labirinto[x,20]:= #219;
       end;

       case x of
        3:Labirinto[x,21]:= #219;
        4:Labirinto[x,21]:= #219;
        11:Labirinto[x,21]:= #219;
        17:Labirinto[x,21]:= #219;
        18:Labirinto[x,21]:= #219;
       end;

      case x of
        4:Labirinto[x,22]:= #219;
        5:Labirinto[x,22]:= #219;
        6:Labirinto[x,22]:= #219;
        7:Labirinto[x,22]:= #219;
        8:Labirinto[x,22]:= #219;
        12:Labirinto[x,22]:= #219;
        13:Labirinto[x,22]:= #219;
        15:Labirinto[x,22]:= #219;
        17:Labirinto[x,22]:= #219;
       end;

       case x of
        2:Labirinto[x,23]:= #219;
        5:Labirinto[x,23]:= #219;
        8:Labirinto[x,23]:= #219;
        10:Labirinto[x,23]:= #219;
        11:Labirinto[x,23]:= #219;
        13:Labirinto[x,23]:= #219;
        18:Labirinto[x,23]:= #219;
       end;

       case x of
        2:Labirinto[x,24]:= #219;
        3:Labirinto[x,24]:= #219;
        5:Labirinto[x,24]:= #219;
        6:Labirinto[x,24]:= #219;
        8:Labirinto[x,24]:= #219;
        10:Labirinto[x,24]:= #219;
        11:Labirinto[x,24]:= #219;
        16:Labirinto[x,24]:= #219;
       end;

       case x of
        5:Labirinto[x,25]:= #219;
        9:Labirinto[x,25]:= #219;
        13:Labirinto[x,25]:= #219;
        14:Labirinto[x,25]:= #219;
        17:Labirinto[x,25]:= #219;
        19:Labirinto[x,25]:= #219;
       end;

       case x of
        3:Labirinto[x,26]:= #219;
        4:Labirinto[x,26]:= #219;
        5:Labirinto[x,26]:= #219;
        7:Labirinto[x,26]:= #219;
        10:Labirinto[x,26]:= #219;
        12:Labirinto[x,26]:= #219;
        13:Labirinto[x,26]:= #219;
        17:Labirinto[x,26]:= #219;
       end;

       case x of
        12:Labirinto[x,27]:= #219;
        13:Labirinto[x,27]:= #219;
        19:Labirinto[x,27]:= #219;
       end;

       case x of
        4:Labirinto[x,28]:= #219;
        6:Labirinto[x,28]:= #219;
        7:Labirinto[x,28]:= #219;
        10:Labirinto[x,28]:= #219;
        11:Labirinto[x,28]:= #219;
        14:Labirinto[x,28]:= #219;
        16:Labirinto[x,28]:= #219;
        19:Labirinto[x,28]:= #219;
       end;

       case x of
        2:Labirinto[x,29]:= #219;
        3:Labirinto[x,29]:= #219;
        6:Labirinto[x,29]:= #219;
        7:Labirinto[x,29]:= #219;
        12:Labirinto[x,29]:= #219;
        17:Labirinto[x,29]:= #219;
       end;

       case x of
        4:Labirinto[x,30]:= #219;
        6:Labirinto[x,30]:= #219;
        9:Labirinto[x,30]:= #219;
        10:Labirinto[x,30]:= #219;
        12:Labirinto[x,30]:= #219;
        13:Labirinto[x,30]:= #219;
        16:Labirinto[x,30]:= #219;
       end;
     end;

    Labirinto[3,30]:= #1;
    Labirinto[4,11]:= #177;
    Labirinto[16,12]:= #177;
    Labirinto[2,19]:= #177;
    Labirinto[12,20]:= #177;
    Labirinto[9,28]:= #177;
    Labirinto[2,17]:= 'x';
    Labirinto[12,23]:= 'x';
    Labirinto[17,30]:= 'x';
    Labirinto[3,9]:= 'x';
    Labirinto[17,7]:= 'x';
    For x:= 1 to 20 do
     begin
       For y:= 6 to 31 do
        begin
         gotoxy(y,x);Writeln(Labirinto[x,y]);
        end;
    end;

     gotoxy(40,2);writeln('     ',#220,#220,#220,#220,#220,#220,#220);
     gotoxy(40,3);writeln('    ',#219,'  ',#220,#220,#220,'  ',#219,'==',#177);
     gotoxy(40,4);writeln(#177,'==',#219,'    ',#186,'    ',#219);
     gotoxy(40,5);writeln('  ',#219,'    ',#223,#223,#223,'    ',#219);
     gotoxy(40,6);writeln(' ', #219,#220,#220,#220,#220,#220,#220,#220,#220,#220,#220,#220,#220,#220,#219);
     gotoxy(40,7);writeln('  ',#219,'   O  O    ',#219);
     gotoxy(40,8);writeln(' ',#219,'             ', #219);
     gotoxy(40,9);writeln(' ',#219,'    ( ',#248,')     ', #219);
     gotoxy(40,10);writeln('  ',#219,'    __     ',#219);
     gotoxy(40,11);writeln('   ',#219,'         ',#219);
     gotoxy(40,12);writeln('    ',#223,#223,#219,'   ',#219,#223,#223);
     gotoxy(40,13);writeln('      ',#219,'   ',#219);
     gotoxy(34,15);writeln('Eu sou o ISSO e te desafio a tentar');
     gotoxy(34,16);writeln('vencer este Labirinto alucinante');
     gotoxy(34,17);writeln('Caso voce descubra que nao tem');
     gotoxy(34,18);writeln('capacidade de vencer precione a');
     gotoxy(34,19);writeln('tecla "s" e saia do Jogo');
     x:= 2;
     y:= 7;
     gotoxy(y,x);Writeln(boneco);

  While botao<> 's' do
   Begin
       botao:= readkey;

        Case botao of

         '6': direita;
         '4': esquerda;
         '8': cima;
         '2': baixo;
        end;

      if Labirinto[17,7]= #177 then
       Begin
         Labirinto[5,11]:= ' ';
         gotoxy(11,5);Writeln(Labirinto[5,11]);
         Labirinto[17,7]:= '1';
      end

      else
       if Labirinto[3,9]= #177 then
       Begin
         Labirinto[12,29]:= ' ';
         gotoxy(29,12);Writeln(Labirinto[12,29]);
         Labirinto[3,9]:= '1';
      end

         else
       if Labirinto[17,30]= #177 then
       Begin
         Labirinto[2,20]:= ' ';
         gotoxy(20,2);Writeln(Labirinto[2,20]);
         Labirinto[17,30]:= '1';
      end

         else
       if Labirinto[2,17]= #177 then
       Begin
         Labirinto[11,21]:= ' ';
         gotoxy(21,11);Writeln(Labirinto[11,21]);
         Labirinto[2,17]:= '1';
      end

         else
       if Labirinto[12,23]= #177 then
       Begin
         Labirinto[2,29]:= ' ';
         gotoxy(29,2);Writeln(Labirinto[2,29]);
         Labirinto[12,23]:= '1';
      end;

   end;
     If botao= 's' then
      begin

         for x:= 15 to 19 do
           begin
            for y:= 34 to 80 do
              begin
                gotoxy(y,x);writeln('  ');
              end;
          end;

          if nivel= 1 then
           begin
             gotoxy(34,17);writeln('Sabia que voce iria desistir, HAHA...');
             gotoxy(34,18);writeln('   Pressione <ENTER> para finalizar');
             nivel:= 100;
           end
          else
             if nivel= 2 then
              begin
               gotoxy(34,17);writeln('Caramba voce conseguiu nao acredito');
               gotoxy(34,18);writeln('Meus parabens agora o nivel: 2');
               gotoxy(34,19);writeln('Pressione <ENTER> para continuar');
             end;
      end;
      Readln;
  End;

  { PROGRAMA PRINCIPAL}

 BEGIN

   nivel:= 1;
   botao:= '1';
   Instrucao;
   clrscr;
    While nivel< 2 do
     begin
       case nivel of
        1: Labirinto1;
       end;

  end;
END.

