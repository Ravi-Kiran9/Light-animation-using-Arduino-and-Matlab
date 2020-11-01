
function varargout = Illumination001(varargin)
% ILLUMINATION001 MATLAB code for Illumination001.fig
%      ILLUMINATION001, by itself, creates a new ILLUMINATION001 or raises the existing
%      singleton*.
%
%      H = ILLUMINATION001 returns the handle to a new ILLUMINATION001 or the handle to
%      the existing singleton*.
%
%      ILLUMINATION001('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ILLUMINATION001.M with the given input arguments.
%
%      ILLUMINATION001('Property','Value',...) creates a new ILLUMINATION001 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Illumination001_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Illumination001_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Illumination001

% Last Modified by GUIDE v2.5 22-Jul-2016 15:51:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Illumination001_OpeningFcn, ...
                   'gui_OutputFcn',  @Illumination001_OutputFcn, ...
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


% --- Executes just before Illumination001 is made visible.
function Illumination001_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Illumination001 (see VARARGIN)

% Choose default command line output for Illumination001
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Illumination001 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Illumination001_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
clear a;

global delay;
delay=0.5;
global a;
a = arduino('COM3','Uno');
pinMode = configurePin(a,'D3');
configurePin(a,'D3','DigitalOutput');
pinMode = configurePin(a,'D4');
configurePin(a,'D4','DigitalOutput');
pinMode = configurePin(a,'D5');
configurePin(a,'D5','DigitalOutput');
pinMode = configurePin(a,'D6');
configurePin(a,'D6','DigitalOutput');
pinMode = configurePin(a,'D7');
configurePin(a,'D7','DigitalOutput');
pinMode = configurePin(a,'D8');
configurePin(a,'D8','DigitalOutput');
pinMode = configurePin(a,'D9');
configurePin(a,'D9','DigitalOutput');
pinMode = configurePin(a,'D10');
configurePin(a,'D10','DigitalOutput');



a.writeDigitalPin('D3',1);
a.writeDigitalPin('D4',1);
a.writeDigitalPin('D5',1);
a.writeDigitalPin('D6',1);
a.writeDigitalPin('D7',1);
a.writeDigitalPin('D8',1);
a.writeDigitalPin('D9',1);
a.writeDigitalPin('D10',1);


% --- Executes on button press in Pattern1.
function Pattern1_Callback(hObject, eventdata, handles)
% hObject    handle to Pattern1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
global delay;

while 1
    
    a.writeDigitalPin('D3',1);
    a.writeDigitalPin('D4',1);
    a.writeDigitalPin('D5',1);
    a.writeDigitalPin('D6',1);
    a.writeDigitalPin('D7',1);
    a.writeDigitalPin('D8',1);
    a.writeDigitalPin('D9',1);
    a.writeDigitalPin('D10',1);

    

    for i=1:5
        
        a.writeDigitalPin('D3',0);
        pause(delay);
        a.writeDigitalPin('D3',1);
        pause(delay);
        a.writeDigitalPin('D4',0);
        pause(delay);
        a.writeDigitalPin('D4',1);
        pause(delay);
        a.writeDigitalPin('D5',0);
        pause(delay);
        a.writeDigitalPin('D5',1);
        pause(delay);
        a.writeDigitalPin('D6',0);
        pause(delay);
        a.writeDigitalPin('D6',1);
        pause(delay);
        a.writeDigitalPin('D7',0);
        pause(delay);
        a.writeDigitalPin('D7',1);
        pause(delay);
        a.writeDigitalPin('D8',0);
        pause(delay);
        a.writeDigitalPin('D8',1);
        pause(delay);
        a.writeDigitalPin('D9',0);
        pause(delay);
        a.writeDigitalPin('D9',1);
        pause(delay);
        a.writeDigitalPin('D10',0);
        pause(delay);
        a.writeDigitalPin('D10',1);
        pause(delay);
        
    end
end

% --- Executes on button press in Pattern2.
function Pattern2_Callback(hObject, eventdata, handles)
% hObject    handle to Pattern2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
global delay;
while 1
    a.writeDigitalPin('D3',1);
    a.writeDigitalPin('D4',1);
    a.writeDigitalPin('D5',1);
    a.writeDigitalPin('D6',1);
    a.writeDigitalPin('D7',1);
    a.writeDigitalPin('D8',1);
    a.writeDigitalPin('D9',1);
    a.writeDigitalPin('D10',1);
    

    a.writeDigitalPin('D3',0);
    pause(delay);
    a.writeDigitalPin('D3',1);
    a.writeDigitalPin('D4',1);
    a.writeDigitalPin('D5',1);
    a.writeDigitalPin('D6',1);
    a.writeDigitalPin('D7',1);
    a.writeDigitalPin('D8',1);
    a.writeDigitalPin('D9',1);
    a.writeDigitalPin('D10',1);
    pause(delay);
    
    a.writeDigitalPin('D3',0);
    pause(delay);
    a.writeDigitalPin('D4',0);
    pause(delay);
    a.writeDigitalPin('D3',1);
    a.writeDigitalPin('D4',1);
    a.writeDigitalPin('D5',1);
    a.writeDigitalPin('D6',1);
    a.writeDigitalPin('D7',1);
    a.writeDigitalPin('D8',1);
    a.writeDigitalPin('D9',1);
    a.writeDigitalPin('D10',1);
    pause(delay);
    
    a.writeDigitalPin('D3',0);
    pause(delay);
    a.writeDigitalPin('D4',0);
    pause(delay);
    a.writeDigitalPin('D5',0);
    pause(delay);
    a.writeDigitalPin('D3',1);
    a.writeDigitalPin('D4',1);
    a.writeDigitalPin('D5',1);
    a.writeDigitalPin('D6',1);
    a.writeDigitalPin('D7',1);
    a.writeDigitalPin('D8',1);
    a.writeDigitalPin('D9',1);
    a.writeDigitalPin('D10',1);
    pause(delay); 

    a.writeDigitalPin('D3',0);
    pause(delay);
    a.writeDigitalPin('D4',0);
    pause(delay);
    a.writeDigitalPin('D5',0);
    pause(delay);
    a.writeDigitalPin('D6',0);
    pause(delay);
    a.writeDigitalPin('D3',1);
    a.writeDigitalPin('D4',1);
    a.writeDigitalPin('D5',1);
    a.writeDigitalPin('D6',1);
    a.writeDigitalPin('D7',1);
    a.writeDigitalPin('D8',1);
    a.writeDigitalPin('D9',1);
    a.writeDigitalPin('D10',1);
    pause(delay);
    
    a.writeDigitalPin('D3',0);
    pause(delay);
    a.writeDigitalPin('D4',0);
    pause(delay);
    a.writeDigitalPin('D5',0);
    pause(delay);
    a.writeDigitalPin('D6',0);
    pause(delay);
    a.writeDigitalPin('D7',0);
    pause(delay);
    a.writeDigitalPin('D3',1);
    a.writeDigitalPin('D4',1);
    a.writeDigitalPin('D5',1);
    a.writeDigitalPin('D6',1);
    a.writeDigitalPin('D7',1);
    a.writeDigitalPin('D8',1);
    a.writeDigitalPin('D9',1);
    a.writeDigitalPin('D10',1);
    pause(delay);
    
    a.writeDigitalPin('D3',0);
    pause(delay);
    a.writeDigitalPin('D4',0);
    pause(delay);
    a.writeDigitalPin('D5',0);
    pause(delay);
    a.writeDigitalPin('D6',0);
    pause(delay);
    a.writeDigitalPin('D7',0);
    pause(delay);
    a.writeDigitalPin('D8',0);
    pause(delay);
    a.writeDigitalPin('D3',1);
    a.writeDigitalPin('D4',1);
    a.writeDigitalPin('D5',1);
    a.writeDigitalPin('D6',1);
    a.writeDigitalPin('D7',1);
    a.writeDigitalPin('D8',1);
    a.writeDigitalPin('D9',1);
    a.writeDigitalPin('D10',1);
    pause(delay);
    
    a.writeDigitalPin('D3',0);
    pause(delay);
    a.writeDigitalPin('D4',0);
    pause(delay);
    a.writeDigitalPin('D5',0);
    pause(delay);
    a.writeDigitalPin('D6',0);
    pause(delay);
    a.writeDigitalPin('D7',0);
    pause(delay);
    a.writeDigitalPin('D8',0);
    pause(delay);
    a.writeDigitalPin('D9',0);
    pause(delay);
    a.writeDigitalPin('D3',1);
    a.writeDigitalPin('D4',1);
    a.writeDigitalPin('D5',1);
    a.writeDigitalPin('D6',1);
    a.writeDigitalPin('D7',1);
    a.writeDigitalPin('D8',1);
    a.writeDigitalPin('D9',1);
    a.writeDigitalPin('D10',1);
    pause(delay);
    
    a.writeDigitalPin('D3',0);
    pause(delay);
    a.writeDigitalPin('D4',0);
    pause(delay);
    a.writeDigitalPin('D5',0);
    pause(delay);
    a.writeDigitalPin('D6',0);
    pause(delay);
    a.writeDigitalPin('D7',0);
    pause(delay);
    a.writeDigitalPin('D8',0);
    pause(delay);
    a.writeDigitalPin('D9',0);
    pause(delay);
    a.writeDigitalPin('D10',0);
    pause(delay);
    a.writeDigitalPin('D3',1);
    a.writeDigitalPin('D4',1);
    a.writeDigitalPin('D5',1);
    a.writeDigitalPin('D6',1);
    a.writeDigitalPin('D7',1);
    a.writeDigitalPin('D8',1);
    a.writeDigitalPin('D9',1);
    a.writeDigitalPin('D10',1);
    pause(delay);
end

% --- Executes on button press in Pattern3.
function Pattern3_Callback(hObject, eventdata, handles)
% hObject    handle to Pattern3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
global delay;
while 1
    a.writeDigitalPin('D3',1);
    a.writeDigitalPin('D4',1);
    a.writeDigitalPin('D5',1);
    a.writeDigitalPin('D6',1);
    a.writeDigitalPin('D7',1);
    a.writeDigitalPin('D8',1);
    a.writeDigitalPin('D9',1);
    a.writeDigitalPin('D10',1); 
    
    
    a.writeDigitalPin('D3',0);
    pause(delay);
    a.writeDigitalPin('D3',1);
    pause(delay);
    a.writeDigitalPin('D4',0);
    pause(delay);
    a.writeDigitalPin('D4',1);
    pause(delay);
    a.writeDigitalPin('D5',0);
    pause(delay);
    a.writeDigitalPin('D5',1);
    pause(delay);
    a.writeDigitalPin('D6',0);
    pause(delay);
    a.writeDigitalPin('D6',1);
    pause(delay);
    a.writeDigitalPin('D7',0);
    pause(delay);
    a.writeDigitalPin('D7',1);
    pause(delay);
    a.writeDigitalPin('D8',0);
    pause(delay);
    a.writeDigitalPin('D8',1);
    pause(delay);
    a.writeDigitalPin('D9',0);
    pause(delay);
    a.writeDigitalPin('D9',1);
    pause(delay);
    a.writeDigitalPin('D10',0);
    pause(delay);
    a.writeDigitalPin('D10',1);
    pause(delay);
    
end


% --- Executes on button press in FAST.
function FAST_Callback(hObject, eventdata, handles)
% hObject    handle to FAST (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global delay;
delay=0.2;


% --- Executes on button press in SLOW.
function SLOW_Callback(hObject, eventdata, handles)
% hObject    handle to SLOW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global delay;
delay=0.8;


% --- Executes on button press in Pattern4.
function Pattern4_Callback(hObject, eventdata, handles)
% hObject    handle to Pattern4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
global delay;

while 1
    a.writeDigitalPin('D3',1);
    a.writeDigitalPin('D4',1);
    a.writeDigitalPin('D5',1);
    a.writeDigitalPin('D6',1);
    a.writeDigitalPin('D7',1);
    a.writeDigitalPin('D8',1);
    a.writeDigitalPin('D9',1);
    a.writeDigitalPin('D10',1); 
    

    a.writeDigitalPin('D3',0);
    pause(delay);
    a.writeDigitalPin('D3',1);
    pause(delay);
    a.writeDigitalPin('D4',0);
    pause(delay);
    a.writeDigitalPin('D4',1);
    pause(delay);
    a.writeDigitalPin('D5',0);
    pause(delay);
    a.writeDigitalPin('D5',1);
    pause(delay);
    a.writeDigitalPin('D6',0);
    pause(delay);
    a.writeDigitalPin('D6',1);
    pause(delay);
    a.writeDigitalPin('D7',0);
    pause(delay);
    a.writeDigitalPin('D7',1);
    pause(delay);
    a.writeDigitalPin('D8',0);
    pause(delay);
    a.writeDigitalPin('D8',1);
    pause(delay);
    a.writeDigitalPin('D9',0);
    pause(delay);
    a.writeDigitalPin('D9',1);
    pause(delay);
    a.writeDigitalPin('D10',0);
    pause(delay);
    a.writeDigitalPin('D10',1);
    pause(delay);
    
    a.writeDigitalPin('D10',0);
    pause(delay);
    a.writeDigitalPin('D10',1);
    pause(delay);
    a.writeDigitalPin('D9',0);
    pause(delay);
    a.writeDigitalPin('D9',1);
    pause(delay);
    a.writeDigitalPin('D8',0);
    pause(delay);
    a.writeDigitalPin('D8',1);
    pause(delay);
    a.writeDigitalPin('D7',0);
    pause(delay);
    a.writeDigitalPin('D7',1);
    pause(delay);
    a.writeDigitalPin('D6',0);
    pause(delay);
    a.writeDigitalPin('D6',1);
    pause(delay);
    a.writeDigitalPin('D5',0);
    pause(delay);
    a.writeDigitalPin('D5',1);
    pause(delay);
    a.writeDigitalPin('D4',0);
    pause(delay);
    a.writeDigitalPin('D4',1);
    pause(delay);
    a.writeDigitalPin('D3',0);
    pause(delay);
    a.writeDigitalPin('D3',1);
    pause(delay);
end


% --- Executes on button press in NORMAL.
function NORMAL_Callback(hObject, eventdata, handles)
% hObject    handle to NORMAL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global delay;
delay=0.5;


% --- Executes on button press in Pattern5.
function Pattern5_Callback(hObject, eventdata, handles)
% hObject    handle to Pattern5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
global delay;
while 1
    a.writeDigitalPin('D3',1);
    a.writeDigitalPin('D4',1);
    a.writeDigitalPin('D5',1);
    a.writeDigitalPin('D6',1);
    a.writeDigitalPin('D7',1);
    a.writeDigitalPin('D8',1);
    a.writeDigitalPin('D9',1);
    a.writeDigitalPin('D10',1);
    
    
    a.writeDigitalPin('D3',0);
    pause(delay);
    a.writeDigitalPin('D10',1);
    pause(delay);
    pause(delay);
    a.writeDigitalPin('D3',0);
    pause(delay);
    a.writeDigitalPin('D4',0);
    pause(delay);
    a.writeDigitalPin('D10',1);
    pause(delay);
    a.writeDigitalPin('D9',1);
    pause(delay);
    pause(delay);
    a.writeDigitalPin('D3',0);
    pause(delay);
    a.writeDigitalPin('D4',0);
    pause(delay);
    a.writeDigitalPin('D5',0);
    pause(delay);
    a.writeDigitalPin('D10',1);
    pause(delay);
    a.writeDigitalPin('D9',1);
    pause(delay);
    a.writeDigitalPin('D8',1);
    pause(delay);
    pause(delay);
    a.writeDigitalPin('D3',0);
    pause(delay);
    a.writeDigitalPin('D4',0);
    pause(delay);
    a.writeDigitalPin('D5',0);
    pause(delay);
    a.writeDigitalPin('D6',0);
    pause(delay);
    a.writeDigitalPin('D10',1);
    pause(delay);
    a.writeDigitalPin('D9',1);
    pause(delay);
    a.writeDigitalPin('D8',1);
    pause(delay);
    a.writeDigitalPin('D7',1);
    pause(delay);
    pause(delay);
    a.writeDigitalPin('D3',0);
    pause(delay);
    a.writeDigitalPin('D4',0);
    pause(delay);
    a.writeDigitalPin('D5',0);
    pause(delay);
    a.writeDigitalPin('D6',0);
    pause(delay);
    a.writeDigitalPin('D7',0);
    pause(delay);
    a.writeDigitalPin('D10',1);
    pause(delay);
    a.writeDigitalPin('D9',1);
    pause(delay);
    a.writeDigitalPin('D8',1);
    pause(delay);
    a.writeDigitalPin('D7',1);
    pause(delay);
    a.writeDigitalPin('D6',1);
    pause(delay);
    pause(delay);
    a.writeDigitalPin('D3',0);
    pause(delay);
    a.writeDigitalPin('D4',0);
    pause(delay);
    a.writeDigitalPin('D5',0);
    pause(delay);
    a.writeDigitalPin('D6',0);
    pause(delay);
    a.writeDigitalPin('D7',0);
    pause(delay);
    a.writeDigitalPin('D8',0);
    pause(delay);
    a.writeDigitalPin('D10',1);
    pause(delay);
    a.writeDigitalPin('D9',1);
    pause(delay);
    a.writeDigitalPin('D8',1);
    pause(delay);
    a.writeDigitalPin('D7',1);
    pause(delay);
    a.writeDigitalPin('D6',1);
    pause(delay);
    a.writeDigitalPin('D5',1);
    pause(delay);
    pause(delay);
    a.writeDigitalPin('D3',0);
    pause(delay);
    a.writeDigitalPin('D4',0);
    pause(delay);
    a.writeDigitalPin('D5',0);
    pause(delay);
    a.writeDigitalPin('D6',0);
    pause(delay);
    a.writeDigitalPin('D7',0);
    pause(delay);
    a.writeDigitalPin('D8',0);
    pause(delay);
    a.writeDigitalPin('D9',0);
    pause(delay);
    a.writeDigitalPin('D10',1);
    pause(delay);
    a.writeDigitalPin('D9',1);
    pause(delay);
    a.writeDigitalPin('D8',1);
    pause(delay);
    a.writeDigitalPin('D7',1);
    pause(delay);
    a.writeDigitalPin('D6',1);
    pause(delay);
    a.writeDigitalPin('D5',1);
    pause(delay);
    a.writeDigitalPin('D4',1);
    pause(delay);
    pause(delay);
    a.writeDigitalPin('D3',0);
    pause(delay);
    a.writeDigitalPin('D4',0);
    pause(delay);
    a.writeDigitalPin('D5',0);
    pause(delay);
    a.writeDigitalPin('D6',0);
    pause(delay);
    a.writeDigitalPin('D7',0);
    pause(delay);
    a.writeDigitalPin('D8',0);
    pause(delay);
    a.writeDigitalPin('D9',0);
    pause(delay);
    a.writeDigitalPin('D10',0);
    pause(delay);
    a.writeDigitalPin('D10',1);
    pause(delay);
    a.writeDigitalPin('D9',1);
    pause(delay);
    a.writeDigitalPin('D8',1);
    pause(delay);
    a.writeDigitalPin('D7',1);
    pause(delay);
    a.writeDigitalPin('D6',1);
    pause(delay);
    a.writeDigitalPin('D5',1);
    pause(delay);
    a.writeDigitalPin('D4',1);
    pause(delay);
    a.writeDigitalPin('D3',0);
    pause(delay);
    pause(delay);
   
end

    
    
% --- Executes on button press in STOP.
function STOP_Callback(hObject, eventdata, handles)
% hObject    handle to STOP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
clear all


