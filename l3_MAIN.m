function varargout = l3_MAIN(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @l3_MAIN_OpeningFcn, ...
                   'gui_OutputFcn',  @l3_MAIN_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

function l3_MAIN_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = l3_MAIN_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;



function eM_Callback(hObject, eventdata, handles)

function eM_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton1_Callback(hObject, eventdata, handles)
%% ������ ������ �����
if strcmp(get(handles.eM,'Enable'),'on')==1
    % �������� ������ � �������� �����
    [FIN.name FIN.path F_ind]=uigetfile('*.*');
    % �������� �� ������ �� ����
    if F_ind==1
        %     ���� ������
        % �������� ��� ����������
        FIN.DaTa=fread(fopen(strcat(FIN.path,FIN.name)))';
        set(handles.pushbutton1,'String','������ ���������')
        set(handles.eM,'String',['������ ����: ',FIN.name]);
        set(handles.eM,'Enable','inactive')
        set(handles.eM,'BackgroundColor',[.9 .9 .9])
        save('FIN.mat','FIN');
    else
        %     ���� �� ������
    end
else
    set(handles.eM,'BackgroundColor',[1 1 1]);
    set(handles.eM,'Enable','on');
    set(handles.eM,'String','������������� ���������');
    set(handles.pushbutton1,'String','������� ����');
end


function pushbutton2_Callback(hObject, eventdata, handles)
%% ������ ����������� / �������������
clc
% �������� ���������
if strcmp(get(handles.eM,'Enable'),'on')==1
    FIN.DaTa=unicode2native(get(handles.eM,'String'));
else
    load('FIN.mat')
end

K='0110';

M=dec2bin(FIN.DaTa,8);
M=reshape(M',4,numel(M)/4)';

for i=1:numel(M(:,1))
    M(i,:)

end






function eD_Callback(hObject, eventdata, handles)
function eD_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eS_Callback(hObject, eventdata, handles)
function eS_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
