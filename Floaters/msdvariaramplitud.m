% direcciones={'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShutting 120 Hz Amplitud 20\1\',...
%     'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShutting 120 Hz Amplitud 20\2\',...
%     'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShutting 120 Hz Amplitud 20\3\',...
%     'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShutting 120 Hz Amplitud 20\4\',...
%     'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShutting 120 Hz Amplitud 20\5\',...
%     'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShutting 120 Hz Amplitud 20\6\',...
%     'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShutting 120 Hz Amplitud 20\7\'};
%     
%     [curva]=unir(direcciones)
    
    load('C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShutting 120 Hz Amplitud 20\CurvaUnida')
    
    tic
    [msd,t]=MSD(curva, 2, 3);
    toc
    
    figure;
    loglog(t, msd(:,1))
    hold on
    [msd,t]=MSD(curva, 4, 4);
    loglog(t, msd(:,1))
    
%     direcciones={'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShuting 120 Hz Amplitud 15\1\',...
%     'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShuting 120 Hz Amplitud 15\2\',...
%     'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShuting 120 Hz Amplitud 15\3\',...
%     'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShuting 120 Hz Amplitud 15\4\',...
%     'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShuting 120 Hz Amplitud 15\5\',...
%     'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShuting 120 Hz Amplitud 15\6\',...
%     'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShuting 120 Hz Amplitud 15\7\'};
%     
%     [curva]=unir(direcciones)

    load('C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShuting 120 Hz Amplitud 15\CurvaUnida')
    
    [msd,t]=MSD(curva, 2, 3)
    loglog(t, msd(:,1))
    hold on
    [msd,t]=MSD(curva, 4, 4)
    loglog(t, msd(:,1))
    
%     direcciones={'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShuting 120 Hz Amplitud 10\1\',...
%     'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShuting 120 Hz Amplitud 10\2\',...
%     'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShuting 120 Hz Amplitud 10\3\',...
%     'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShuting 120 Hz Amplitud 10\4\',...
%     'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShuting 120 Hz Amplitud 10\5\',...
%     'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShuting 120 Hz Amplitud 10\6\',...
%     'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShuting 120 Hz Amplitud 10\7\'};
%     
%     [curva]=unir(direcciones)

    load('C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShuting 120 Hz Amplitud 10\CurvaUnida')
    
    [msd,t]=MSD(curva, 2, 3)
    loglog(t, msd(:,1))
    hold on
    [msd,t]=MSD(curva, 4, 4)
    loglog(t, msd(:,1))
    
    direcciones={'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShuting 120 Hz Amplitud 5\1\',...
    'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShuting 120 Hz Amplitud 5\2\',...
    'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShuting 120 Hz Amplitud 5\3\',...
    'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShuting 120 Hz Amplitud 5\4\',...
    'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShuting 120 Hz Amplitud 5\5\',...
    'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShuting 120 Hz Amplitud 5\6\',...
    'C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShuting 120 Hz Amplitud 5\7\'};
    
    [curva]=unir(direcciones)

    load('C:\Users\Nicol�s\Desktop\Labo 6\Mediciones\09-11-17\Mediciones\SingleShuting 120 Hz Amplitud 5\CurvaUnida')
    
    [msd,t]=MSD(curva, 2, 3)
    loglog(t, msd(:,1))
    hold on
    [msd,t]=MSD(curva, 4, 4)
    loglog(t, msd(:,1))
    
    legend('xy A=20','z A=20' ,'xy A=15','z A=15','xy A=10','z A=10','xy A=5', 'z A=5')
    
