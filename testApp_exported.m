classdef testApp_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                  matlab.ui.Figure
        TabGroup                  matlab.ui.container.TabGroup
        RunTab                    matlab.ui.container.Tab
        GridLayout                matlab.ui.container.GridLayout
        Panel                     matlab.ui.container.Panel
        GridLayout3               matlab.ui.container.GridLayout
        UIAxes                    matlab.ui.control.UIAxes
        SetupPanel                matlab.ui.container.Panel
        GridLayout2               matlab.ui.container.GridLayout
        ProjectDropDownLabel      matlab.ui.control.Label
        ProjectDropDown           matlab.ui.control.DropDown
        GroupDropDown_2Label      matlab.ui.control.Label
        GroupDropDown_2           matlab.ui.control.DropDown
        PhaseDropDown_2Label      matlab.ui.control.Label
        PhaseDropDown_2           matlab.ui.control.DropDown
        SubjectSpinnerLabel       matlab.ui.control.Label
        SubjectSpinner            matlab.ui.control.Spinner
        ProtocoldescriptionLabel  matlab.ui.control.Label
        StartButton               matlab.ui.control.Button
        ConfirmCheckBox           matlab.ui.control.CheckBox
        VideoPanel                matlab.ui.container.Panel
        GridLayout5               matlab.ui.container.GridLayout
        Image                     matlab.ui.control.Image
        ProjectTab                matlab.ui.container.Tab
        GridLayout_2              matlab.ui.container.GridLayout
        Panel_2                   matlab.ui.container.Panel
        Panel2_2                  matlab.ui.container.Panel
        Panel3_2                  matlab.ui.container.Panel
        Panel4_2                  matlab.ui.container.Panel
        ProtocolTab               matlab.ui.container.Tab
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [0 0 640 480];
            app.UIFigure.Name = 'UI Figure';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [1 1 640 480];

            % Create RunTab
            app.RunTab = uitab(app.TabGroup);
            app.RunTab.Title = 'Run';
            app.RunTab.BackgroundColor = [0.9412 0.9412 0.9412];

            % Create GridLayout
            app.GridLayout = uigridlayout(app.RunTab);
            app.GridLayout.ColumnWidth = {'1x', '1x', '2x'};
            app.GridLayout.RowHeight = {'3x', '2x'};

            % Create Panel
            app.Panel = uipanel(app.GridLayout);
            app.Panel.Title = 'Panel';
            app.Panel.BackgroundColor = [1 1 1];
            app.Panel.Layout.Row = 2;
            app.Panel.Layout.Column = [1 3];

            % Create GridLayout3
            app.GridLayout3 = uigridlayout(app.Panel);
            app.GridLayout3.ColumnWidth = {'1x'};
            app.GridLayout3.RowHeight = {'1x'};
            app.GridLayout3.Padding = [5 5 5 5];

            % Create UIAxes
            app.UIAxes = uiaxes(app.GridLayout3);
            title(app.UIAxes, '')
            xlabel(app.UIAxes, 'X')
            ylabel(app.UIAxes, 'Y')
            app.UIAxes.BackgroundColor = [1 1 1];
            app.UIAxes.Layout.Row = 1;
            app.UIAxes.Layout.Column = 1;

            % Create SetupPanel
            app.SetupPanel = uipanel(app.GridLayout);
            app.SetupPanel.Title = 'Setup';
            app.SetupPanel.BackgroundColor = [1 1 1];
            app.SetupPanel.Layout.Row = 1;
            app.SetupPanel.Layout.Column = 1;

            % Create GridLayout2
            app.GridLayout2 = uigridlayout(app.SetupPanel);
            app.GridLayout2.ColumnWidth = {'fit', '1x'};
            app.GridLayout2.RowHeight = {20, 20, 20, 20, '1x', 20};
            app.GridLayout2.ColumnSpacing = 5;
            app.GridLayout2.RowSpacing = 5;
            app.GridLayout2.Padding = [5 5 5 5];
            app.GridLayout2.Scrollable = 'on';

            % Create ProjectDropDownLabel
            app.ProjectDropDownLabel = uilabel(app.GridLayout2);
            app.ProjectDropDownLabel.Layout.Row = 1;
            app.ProjectDropDownLabel.Layout.Column = 1;
            app.ProjectDropDownLabel.Text = 'Project';

            % Create ProjectDropDown
            app.ProjectDropDown = uidropdown(app.GridLayout2);
            app.ProjectDropDown.Layout.Row = 1;
            app.ProjectDropDown.Layout.Column = 2;

            % Create GroupDropDown_2Label
            app.GroupDropDown_2Label = uilabel(app.GridLayout2);
            app.GroupDropDown_2Label.Layout.Row = 2;
            app.GroupDropDown_2Label.Layout.Column = 1;
            app.GroupDropDown_2Label.Text = 'Group';

            % Create GroupDropDown_2
            app.GroupDropDown_2 = uidropdown(app.GridLayout2);
            app.GroupDropDown_2.Layout.Row = 2;
            app.GroupDropDown_2.Layout.Column = 2;

            % Create PhaseDropDown_2Label
            app.PhaseDropDown_2Label = uilabel(app.GridLayout2);
            app.PhaseDropDown_2Label.Layout.Row = 3;
            app.PhaseDropDown_2Label.Layout.Column = 1;
            app.PhaseDropDown_2Label.Text = 'Phase';

            % Create PhaseDropDown_2
            app.PhaseDropDown_2 = uidropdown(app.GridLayout2);
            app.PhaseDropDown_2.Layout.Row = 3;
            app.PhaseDropDown_2.Layout.Column = 2;

            % Create SubjectSpinnerLabel
            app.SubjectSpinnerLabel = uilabel(app.GridLayout2);
            app.SubjectSpinnerLabel.Layout.Row = 4;
            app.SubjectSpinnerLabel.Layout.Column = 1;
            app.SubjectSpinnerLabel.Text = 'Subject #';

            % Create SubjectSpinner
            app.SubjectSpinner = uispinner(app.GridLayout2);
            app.SubjectSpinner.Layout.Row = 4;
            app.SubjectSpinner.Layout.Column = 2;

            % Create ProtocoldescriptionLabel
            app.ProtocoldescriptionLabel = uilabel(app.GridLayout2);
            app.ProtocoldescriptionLabel.VerticalAlignment = 'top';
            app.ProtocoldescriptionLabel.Layout.Row = 5;
            app.ProtocoldescriptionLabel.Layout.Column = [1 2];
            app.ProtocoldescriptionLabel.Text = {'Protocol description'; ''};

            % Create StartButton
            app.StartButton = uibutton(app.GridLayout2, 'push');
            app.StartButton.Layout.Row = 6;
            app.StartButton.Layout.Column = 1;
            app.StartButton.Text = 'Start';

            % Create ConfirmCheckBox
            app.ConfirmCheckBox = uicheckbox(app.GridLayout2);
            app.ConfirmCheckBox.Text = 'Confirm';
            app.ConfirmCheckBox.Layout.Row = 6;
            app.ConfirmCheckBox.Layout.Column = 2;

            % Create VideoPanel
            app.VideoPanel = uipanel(app.GridLayout);
            app.VideoPanel.Title = 'Video';
            app.VideoPanel.BackgroundColor = [1 1 1];
            app.VideoPanel.Layout.Row = 1;
            app.VideoPanel.Layout.Column = 3;

            % Create GridLayout5
            app.GridLayout5 = uigridlayout(app.VideoPanel);
            app.GridLayout5.ColumnWidth = {'1x'};
            app.GridLayout5.RowHeight = {'1x'};
            app.GridLayout5.Padding = [1 1 1 1];

            % Create Image
            app.Image = uiimage(app.GridLayout5);
            app.Image.ScaleMethod = 'stretch';
            app.Image.Layout.Row = 1;
            app.Image.Layout.Column = 1;

            % Create ProjectTab
            app.ProjectTab = uitab(app.TabGroup);
            app.ProjectTab.Title = 'Project';
            app.ProjectTab.BackgroundColor = [0.9412 0.9412 0.9412];

            % Create GridLayout_2
            app.GridLayout_2 = uigridlayout(app.ProjectTab);
            app.GridLayout_2.ColumnWidth = {'1x', '1x', '1x'};
            app.GridLayout_2.RowHeight = {'3x', '2x'};

            % Create Panel_2
            app.Panel_2 = uipanel(app.GridLayout_2);
            app.Panel_2.Title = 'Panel';
            app.Panel_2.BackgroundColor = [1 1 1];
            app.Panel_2.Layout.Row = 2;
            app.Panel_2.Layout.Column = [1 3];

            % Create Panel2_2
            app.Panel2_2 = uipanel(app.GridLayout_2);
            app.Panel2_2.Title = 'Panel2';
            app.Panel2_2.BackgroundColor = [1 1 1];
            app.Panel2_2.Layout.Row = 1;
            app.Panel2_2.Layout.Column = 1;

            % Create Panel3_2
            app.Panel3_2 = uipanel(app.GridLayout_2);
            app.Panel3_2.Title = 'Panel3';
            app.Panel3_2.BackgroundColor = [1 1 1];
            app.Panel3_2.Layout.Row = 1;
            app.Panel3_2.Layout.Column = 2;

            % Create Panel4_2
            app.Panel4_2 = uipanel(app.GridLayout_2);
            app.Panel4_2.Title = 'Panel4';
            app.Panel4_2.BackgroundColor = [1 1 1];
            app.Panel4_2.Layout.Row = 1;
            app.Panel4_2.Layout.Column = 3;

            % Create ProtocolTab
            app.ProtocolTab = uitab(app.TabGroup);
            app.ProtocolTab.Title = 'Protocol';
            app.ProtocolTab.BackgroundColor = [0.9412 0.9412 0.9412];

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = testApp_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end