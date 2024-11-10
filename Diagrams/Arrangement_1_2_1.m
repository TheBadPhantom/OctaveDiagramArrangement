function Arrangement_1_2_1(x, data1, data2, data3, data4, data5)

    A = get(0, 'ScreenSize');

    # Create the figure
    figure(1, 'name', 'Arrangement_1_2_1', 'Position', [0 60 A(3) A(4) * 0.87])
    title ("Arrangement_1_2_1");

    subplot(3, 1, 1);
    hold("on");
        title ("Graph 1");

        [AX1 H1 H2] = plotyy(x, data1, x, [data4; data5], 'plot');

        xlabel("x label");
        ylabel (AX1(1), "Some label [unit]");

        axHandle = get (gcf, "currentaxes");
        set(axHandle, 'OuterPosition', [-0.1, 0.64, 1.1, 0.4]);

        set(gca, 'XTick' ,0:1:20);

        legend([H1;H2], 'data1', 'data4', 'data5', 'location', 'northeastoutside');
        grid on
    hold("off");

    subplot(3, 2, 3);
    hold("on");
        title ("Graph 2");

        [AX2 H1 H2] = plotyy(x, data1, x, data4, 'plot');

        xlabel("x label");
        ylabel (AX2(1), "Some label [unit]");

        axHandle = get (gcf, "currentaxes");
        set(axHandle, 'OuterPosition', [-0.1, 0.3, 0.55, 0.35]);

        legend([H1;H2],'data1', 'data4', 'location', 'northeastoutside');
        grid on
    hold("off");

    subplot(3, 2, 4);
    hold("on");
        title ("Graph 3");

        [AX3 H1 H2] = plotyy(x, data1, x, data4, 'plot');
        H3 = plot(AX3(1), x, data3, 'linewidth', 2);

        xlabel("x label");
        ylabel (AX3(1), "Some label [unit]");

        axHandle = get (gcf, "currentaxes");
        set(axHandle, 'OuterPosition', [0.4, 0.3, 0.6, 0.35]);

        legend([H1;H2;H3],'data1', 'data4', 'data3', 'location', 'northeastoutside');
        grid on
    hold("off");

    subplot(3, 1, 3);
    hold("on");
        title ("Graph 4");

        [AX4 H1 H2] = plotyy(x, data1, x, [data4; data5], 'plot');

        xlabel("x label");
        ylabel (AX4(1), "Some label [unit]");

        axHandle = get (gcf, "currentaxes");
        set(axHandle, 'OuterPosition', [-0.1, -0.05, 1.1, 0.4]);

        legend([H1;H2],'data1', 'data4', 'data5', 'location', 'northeastoutside');
        grid on
    hold("off");

    #refresh()

endfunction