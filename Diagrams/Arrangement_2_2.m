function Arrangement_1_2_1copy(x, y1, y2, y3, y4, y5)

    A = get(0, 'ScreenSize');

    # Create the figure
    figure(3, 'name', 'Arrangement_2_2', 'Position', [0 60 A(3) A(4) * 0.87])
    title ("Arrangement_2_2");

    subplot(2, 2, 1, 'align');
    hold("on");
        title ("Graph 1");

        [AX1 H1 H2] = plotyy(x, y1, x, [y4; y5], 'plot');

        xlabel("x label");
        ylabel (AX1(1), "Some label [unit]");

        axHandle = get (gcf, "currentaxes");
        set(axHandle, 'OuterPosition', [-0.1, 0.5, 0.55, 0.55]);

        set(gca, 'XTick' ,0:1:20);

        legend([H1;H2], 'y1', 'y4', 'y5', 'location', 'northeastoutside');
        grid on
    hold("off");

    subplot(2, 2, 2, 'align');
    hold("on");
        title ("Graph 2");

        [AX2 H1 H2] = plotyy(x, y1, x, y4, 'plot');

        xlabel("x label");
        ylabel (AX2(1), "Some label [unit]");

        axHandle = get (gcf, "currentaxes");
        set(axHandle, 'OuterPosition', [0.45, 0.5, 0.6, 0.55]);

        set(gca, 'XTick' ,0:5:20);

        legend([H1;H2],'y1', 'y4', 'location', 'northeastoutside');
        grid on
    hold("off");

    subplot(2, 2, 3, 'align');
    hold("on");
        title ("Graph 3");

        [AX3 H1 H2] = plotyy(x, y1, x, y4, 'plot');
        H3 = plot(AX3(1), x, y3, 'linewidth', 2);

        xlabel("x label");
        ylabel (AX3(1), "Some label [unit]");

        axHandle = get (gcf, "currentaxes");
        set(axHandle, 'OuterPosition', [-0.1, -0.05, 0.55, 0.55]);

        set(gca, 'XTick' ,0:1:20);

        legend([H1;H2;H3],'y1', 'y4', 'y3', 'location', 'northeastoutside');
        grid on
    hold("off");

    subplot(2, 2, 4, 'align');
    hold("on");
        title ("Graph 4");

        [AX4 H1 H2] = plotyy(x, y1, x, [y4; y5], 'plot');

        xlabel("x label");
        ylabel (AX4(1), "Some label [unit]");

        axHandle = get (gcf, "currentaxes");
        set(axHandle, 'OuterPosition', [0.45, -0.05, 0.6, 0.55]);

        set(gca, 'XTick' ,0:4:20);

        legend([H1;H2],'y1', 'y4', 'y5', 'location', 'northeastoutside');
        grid on
    hold("off");

endfunction