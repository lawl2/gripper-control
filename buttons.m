%Serial connection s1

function varargout = buttons(varargin)
% BUTTONS MATLAB code for buttons.fig
%      BUTTONS, by itself, creates a new BUTTONS or raises the existing
%      singleton*.
%
%      H = BUTTONS returns the handle to a new BUTTONS or the handle to
%      the existing singleton*.
%
%      BUTTONS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BUTTONS.M with the given input arguments.
%
%      BUTTONS('Property','Value',...) creates a new BUTTONS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before buttons_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to buttons_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help buttons

% Last Modified by GUIDE v2.5 30-Jul-2019 12:57:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @buttons_OpeningFcn, ...
                   'gui_OutputFcn',  @buttons_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before buttons is made visible.
function buttons_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to buttons (see VARARGIN)

% Choose default command line output for buttons
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes buttons wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = buttons_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;




function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
   

% --- Executes on button press in Button1High.
function Button1High_Callback(hObject, eventdata, handles)
% hObject    handle to Button1High (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    instrreset
    
    if(exist('s1') == 1)
        fclose(s1)  
    end

    seriallist

    s1 = serial('COM11')
    s1.Baudrate = 9600
    s1.Terminator = 'CR'
    
    fopen(s1)
    
    frame = [hex2dec('7E') hex2dec('00') hex2dec('10') hex2dec('17') hex2dec('01') hex2dec('00') hex2dec('13') hex2dec('A2') hex2dec('00') hex2dec('41') hex2dec('53') hex2dec('13') hex2dec('46') hex2dec('FF') hex2dec('FE') hex2dec('02') hex2dec('44') hex2dec('30') hex2dec('05') hex2dec('CD')]

    %for cycle for sending frame
    for(i = 1:20)
        frame(i);
        %sending single byte
        fwrite(s1,frame(i))
    end
    
    fclose(s1)
    delete(s1)
    clear s1
    
% --- Executes on button press in Button2High.
function Button2High_Callback(hObject, eventdata, handles)
% hObject    handle to Button2High (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    instrreset
    
    if(exist('s1') == 1)
        fclose(s1)  
    end

    seriallist

    s1 = serial('COM11')
    s1.Baudrate = 9600
    s1.Terminator = 'CR'
    
    fopen(s1)
    
    frame = [hex2dec('7E') hex2dec('00') hex2dec('10') hex2dec('17') hex2dec('01') hex2dec('00') hex2dec('13') hex2dec('A2') hex2dec('00') hex2dec('41') hex2dec('53') hex2dec('13') hex2dec('46') hex2dec('FF') hex2dec('FE') hex2dec('02') hex2dec('44') hex2dec('31') hex2dec('05') hex2dec('CC')]

    %for cycle for sending frame
    for(i = 1:20)
        frame(i);
        %sending single byte
        fwrite(s1,frame(i))
    end
    
    fclose(s1)
    delete(s1)
    clear s1

% --- Executes on button press in Button3High.
function Button3High_Callback(hObject, eventdata, handles)
% hObject    handle to Button3High (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    instrreset
    
    if(exist('s1') == 1)
        fclose(s1)  
    end

    seriallist

    s1 = serial('COM11')
    s1.Baudrate = 9600
    s1.Terminator = 'CR'
    
    fopen(s1)
    
    frame = [hex2dec('7E') hex2dec('00') hex2dec('10') hex2dec('17') hex2dec('01') hex2dec('00') hex2dec('13') hex2dec('A2') hex2dec('00') hex2dec('41') hex2dec('53') hex2dec('13') hex2dec('46') hex2dec('FF') hex2dec('FE') hex2dec('02') hex2dec('44') hex2dec('32') hex2dec('05') hex2dec('CB')]

    %for cycle for sending frame
    for(i = 1:20)
        frame(i);
        %sending single byte
        fwrite(s1,frame(i))
    end
    
    fclose(s1)
    delete(s1)
    clear s1

% --- Executes on button press in Button4High.
function Button4High_Callback(hObject, eventdata, handles)
% hObject    handle to Button4High (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    instrreset
    
    if(exist('s1') == 1)
        fclose(s1)  
    end

    seriallist

    s1 = serial('COM11')
    s1.Baudrate = 9600
    s1.Terminator = 'CR'
    
    fopen(s1)
    
    frame = [hex2dec('7E') hex2dec('00') hex2dec('10') hex2dec('17') hex2dec('01') hex2dec('00') hex2dec('13') hex2dec('A2') hex2dec('00') hex2dec('41') hex2dec('53') hex2dec('13') hex2dec('46') hex2dec('FF') hex2dec('FE') hex2dec('02') hex2dec('44') hex2dec('33') hex2dec('05') hex2dec('CA')]

    %for cycle for sending frame
    for(i = 1:20)
        frame(i);
        %sending single byte
        fwrite(s1,frame(i))
    end
    
    fclose(s1)
    delete(s1)
    clear s1

% --- Executes on button press in Button1Low.
function Button1Low_Callback(hObject, eventdata, handles)
% hObject    handle to Button1Low (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    instrreset
    
    if(exist('s1') == 1)
        fclose(s1)  
    end

    seriallist

    s1 = serial('COM11')
    s1.Baudrate = 9600
    s1.Terminator = 'CR'
    
    fopen(s1)
    
    frame = [hex2dec('7E') hex2dec('00') hex2dec('10') hex2dec('17') hex2dec('01') hex2dec('00') hex2dec('13') hex2dec('A2') hex2dec('00') hex2dec('41') hex2dec('53') hex2dec('13') hex2dec('46') hex2dec('FF') hex2dec('FE') hex2dec('02') hex2dec('44') hex2dec('30') hex2dec('04') hex2dec('CE')]

    %for cycle for sending frame
    for(i = 1:20)
        frame(i);
        %sending single byte
        fwrite(s1,frame(i))
    end
    
    fclose(s1)
    delete(s1)
    clear s1

% --- Executes on button press in button2Low.
function button2Low_Callback(hObject, eventdata, handles)
% hObject    handle to button2Low (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    instrreset
    
    if(exist('s1') == 1)
        fclose(s1)  
    end

    seriallist

    s1 = serial('COM11')
    s1.Baudrate = 9600
    s1.Terminator = 'CR'
    
    fopen(s1)
    
    frame = [hex2dec('7E') hex2dec('00') hex2dec('10') hex2dec('17') hex2dec('01') hex2dec('00') hex2dec('13') hex2dec('A2') hex2dec('00') hex2dec('41') hex2dec('53') hex2dec('13') hex2dec('46') hex2dec('FF') hex2dec('FE') hex2dec('02') hex2dec('44') hex2dec('31') hex2dec('04') hex2dec('CD')]

    %for cycle for sending frame
    for(i = 1:20)
        frame(i);
        %sending single byte
        fwrite(s1,frame(i))
    end
    
    fclose(s1)
    delete(s1)
    clear s1

% --- Executes on button press in button3Low.
function button3Low_Callback(hObject, eventdata, handles)
% hObject    handle to button3Low (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    instrreset
    
    if(exist('s1') == 1)
        fclose(s1)  
    end

    seriallist

    s1 = serial('COM11')
    s1.Baudrate = 9600
    s1.Terminator = 'CR'
    
    fopen(s1)
    
    frame = [hex2dec('7E') hex2dec('00') hex2dec('10') hex2dec('17') hex2dec('01') hex2dec('00') hex2dec('13') hex2dec('A2') hex2dec('00') hex2dec('41') hex2dec('53') hex2dec('13') hex2dec('46') hex2dec('FF') hex2dec('FE') hex2dec('02') hex2dec('44') hex2dec('32') hex2dec('04') hex2dec('CC')]

    %for cycle for sending frame
    for(i = 1:20)
        frame(i);
        %sending single byte
        fwrite(s1,frame(i))
    end
    
    fclose(s1)
    delete(s1)
    clear s1

% --- Executes on button press in button4Low.
function button4Low_Callback(hObject, eventdata, handles)
% hObject    handle to button4Low (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    instrreset
    
    if(exist('s1') == 1)
        fclose(s1)  
    end

    seriallist

    s1 = serial('COM11')
    s1.Baudrate = 9600
    s1.Terminator = 'CR'
    
    fopen(s1)
    
    frame = [hex2dec('7E') hex2dec('00') hex2dec('10') hex2dec('17') hex2dec('01') hex2dec('00') hex2dec('13') hex2dec('A2') hex2dec('00') hex2dec('41') hex2dec('53') hex2dec('13') hex2dec('46') hex2dec('FF') hex2dec('FE') hex2dec('02') hex2dec('44') hex2dec('33') hex2dec('04') hex2dec('CB')]

    %for cycle for sending frame
    for(i = 1:20)
        frame(i);
        %sending single byte
        fwrite(s1,frame(i))
    end
    
    fclose(s1)
    delete(s1)
    clear s1