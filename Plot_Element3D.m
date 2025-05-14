function Plot_Element3D(ELEMCon, XYZCoord)
    figure; hold on;
    for i = 1:size(ELEMCon, 1)
        elem = ELEMCon(i, :);
        nodes = XYZCoord(elem, :);
        % Define faces of a hexahedron (each row is one face)
        faces = [
            1 2 3 4;
            5 6 7 8;
            1 2 6 5;
            2 3 7 6;
            3 4 8 7;
            4 1 5 8
        ];
        for j = 1:6
            patch('Vertices', nodes, 'Faces', faces(j,:), ...
                  'FaceColor', 'cyan', 'FaceAlpha', 0.3, 'EdgeColor', 'k');
        end
    end
    xlabel('X'); ylabel('Y'); zlabel('Z');
    title('3D Hexahedral Mesh');
    view(3); grid on;
end
