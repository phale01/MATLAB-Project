function varargout = GUI(varargin)
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 05-Feb-2015 22:37:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
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


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in button1.
function button1_Callback(hObject, eventdata, handles)
% hObject    handle to button1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% cracker.m

% This program brute-force cracks a password.  What I'm thinking we can do
% initially is start small, so have like a 2 character password, and see
% what we can do to break that.  Once we have our cracking code on the
% page, then we can play around with the password, perhaps by increasing
% length or complexity, or having the program generate a password.

% Authors: Happy Hale
%          Tucker Killian
%          Grace Bushong
%          Rachael Mullin
%          Will Badart

% See git for version control.

clc;

realpass = get(handles.edit1, 'String');

%tic;

aclock = clock;

%% Import Common Password Library

filename = 'commonPass.txt';
delimiter = '';
formatSpec = '%s%[^\n\r]';
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'EmptyValue' ,NaN, 'ReturnOnError', false);
fclose(fileID);
password = dataArray{:, 1};
clearvars filename delimiter formatSpec fileID dataArray ans;

%% Set Parameters

alphabet = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_=+[{]}\|";:/?.>'',<��������������������������ܢ��?������Ѫ��������ߵ���';
alphasize = size(alphabet);
guess = ' ';
counter = 0;
i = 0;
j = 0;

%% Crack Password

while strcmp(guess, realpass) == 0

    % checks password against the library
    for i = 1:size(password)
        counter = counter + 1;
        guess = password(i);
        if strcmp(guess, realpass) == 1
            guess = guess{:};
            break
        end
    end

    if strcmp(guess, realpass) == 1
        break
    end

    guess = ' '; % reset 'guess.'  It wasn't a common password
    
    % check all 1 character passwords possible w/ given alphabet
    if strcmp(guess, realpass) == 0
        for i = 1:alphasize(2)
            guess(1) = alphabet(i);
            counter = counter + 1;
            if strcmp(guess, realpass) == 1
                break
            end
        end
    end
    
    % the password has more than one characters.  Check all possible 2
    % character passwords
    if strcmp(guess, realpass) == 0
        for i = 1:alphasize(2)
            %counter = counter + 1;
            guess(1) = alphabet(i);
            for j = 1:alphasize(2)
                counter = counter + 1;
                guess(2) = alphabet(j);
                if strcmp(guess, realpass) == 1
                    break
                end
            end
            if strcmp(guess, realpass) == 1
                break
            end
        end
    end
    
    % 3 character passwords
    if strcmp(guess, realpass) == 0
        for i = 1:alphasize(2)
            %counter = counter + 1;
            guess(1) = alphabet(i);
            for j = 1:alphasize(2)
                %counter = counter + 1;
                guess(2) = alphabet(j);
                for k = 1:alphasize(2)
                    counter = counter + 1;
                    guess(3) = alphabet(k);
                    if strcmp(guess, realpass) == 1
                        break
                    end
                end
                if strcmp(guess, realpass) == 1
                    break
                end
            end
            if strcmp(guess, realpass) == 1
                break
            end
        end
    end
    
    % 4 character passwords
    if strcmp(guess, realpass) == 0
        for i = 1:alphasize(2)
            %counter = counter + 1;
            guess(1) = alphabet(i);
            for j = 1:alphasize(2)
                %counter = counter + 1;
                guess(2) = alphabet(j);
                for k = 1:alphasize(2)
                    %counter = counter + 1;
                    guess(3) = alphabet(k);
                    for l = 1:alphasize(2)
                        counter = counter + 1;
                        guess(4) = alphabet(l);
                        if strcmp(guess, realpass) == 1
                            break
                        end %ends if
                    end %ends for(l)
                    if strcmp(guess, realpass) == 1
                        break
                    end %ends if
                end %ends for(k)
                if strcmp(guess, realpass) == 1
                    break
                end %ends if
            end %ends for(j)
            if strcmp(guess, realpass) == 1
                break
            end %ends if
        end %ends for(i)
    end %ends if strcmp(guess, ...
    
    % 5 character passwords
    if strcmp(guess, realpass) == 0
        for i = 1:alphasize(2)
            %counter = counter + 1;
            guess(1) = alphabet(i);
            for j = 1:alphasize(2)
                %counter = counter + 1;
                guess(2) = alphabet(j);
                for k = 1:alphasize(2)
                    %counter = counter + 1;
                    guess(3) = alphabet(k);
                    for l = 1:alphasize(2)
                        %counter = counter + 1;
                        guess(4) = alphabet(l);
                        for m = 1:alphasize(2);
                            counter = counter + 1;
                            guess(5) = alphabet(m);
                            if strcmp(guess, realpass) == 1
                                break
                            end %ends if
                        end %ends for(m)
                        if strcmp(guess, realpass) == 1
                            break
                        end %ends if
                    end %ends for(l)
                    if strcmp(guess, realpass) == 1
                        break
                    end %ends if
                end %ends for(k)
                if strcmp(guess, realpass) == 1
                    break
                end %ends if
            end %ends for(j)
            if strcmp(guess, realpass) == 1
                break
            end %ends if
        end %ends for(i)
    end %ends if strcmp(guess, ...
    
    % 6 character passwords
    if strcmp(guess, realpass) == 0
        for i = 1:alphasize(2)
            %counter = counter + 1;
            guess(1) = alphabet(i);
            for j = 1:alphasize(2)
                %counter = counter + 1;
                guess(2) = alphabet(j);
                for k = 1:alphasize(2)
                    %counter = counter + 1;
                    guess(3) = alphabet(k);
                    for l = 1:alphasize(2)
                        %counter = counter + 1;
                        guess(4) = alphabet(l);
                        for m = 1:alphasize(2);
                            %counter = counter + 1;
                            guess(5) = alphabet(m);
                            for n = 1:alphasize(2)
                                counter = counter + 1;
                                guess(6) = alphabet(n);
                                if strcmp(guess, realpass) == 1
                                    break
                                end %ends if
                            end %ends for(n)
                            if strcmp(guess, realpass) == 1
                                break
                            end %ends if
                        end %ends for(m)
                        if strcmp(guess, realpass) == 1
                            break
                        end %ends if
                    end %ends for(l)
                    if strcmp(guess, realpass) == 1
                        break
                    end %ends if
                end %ends for(k)
                if strcmp(guess, realpass) == 1
                    break
                end %ends if
            end %ends for(j)
            if strcmp(guess, realpass) == 1
                break
            end %ends if
        end %ends for(i)
    end %ends if strcmp(guess, ...
    
    % 7 character passwords
    if strcmp(guess, realpass) == 0
        for i = 1:alphasize(2)
            %counter = counter + 1;
            guess(1) = alphabet(i);
            for j = 1:alphasize(2)
                %counter = counter + 1;
                guess(2) = alphabet(j);
                for k = 1:alphasize(2)
                    %counter = counter + 1;
                    guess(3) = alphabet(k);
                    for l = 1:alphasize(2)
                        %counter = counter + 1;
                        guess(4) = alphabet(l);
                        for m = 1:alphasize(2);
                            %counter = counter + 1;
                            guess(5) = alphabet(m);
                            for n = 1:alphasize(2)
                                %counter = counter + 1;
                                guess(6) = alphabet(n);
                                for o = 1:alphasize(2);
                                    counter = counter + 1;
                                    guess(7) = alphabet(o);
                                    if strcmp(guess, realpass) == 1
                                        break
                                    end %ends if
                                end %ends for(o)
                                if strcmp(guess, realpass) == 1
                                    break
                                end %ends if
                            end %ends for(n)
                            if strcmp(guess, realpass) == 1
                                break
                            end %ends if
                        end %ends for(m)
                        if strcmp(guess, realpass) == 1
                            break
                        end %ends if
                    end %ends for(l)
                    if strcmp(guess, realpass) == 1
                        break
                    end %ends if
                end %ends for(k)
                if strcmp(guess, realpass) == 1
                    break
                end %ends if
            end %ends for(j)
            if strcmp(guess, realpass) == 1
                break
            end %ends if
        end %ends for(i)
    end %ends if strcmp(guess, ...
    
    % 8 character passwords
    if strcmp(guess, realpass) == 0
        for i = 1:alphasize(2)
            %counter = counter + 1;
            guess(1) = alphabet(i);
            for j = 1:alphasize(2)
                %counter = counter + 1;
                guess(2) = alphabet(j);
                for k = 1:alphasize(2)
                    %counter = counter + 1;
                    guess(3) = alphabet(k);
                    for l = 1:alphasize(2)
                        %counter = counter + 1;
                        guess(4) = alphabet(l);
                        for m = 1:alphasize(2);
                            %counter = counter + 1;
                            guess(5) = alphabet(m);
                            for n = 1:alphasize(2)
                                %counter = counter + 1;
                                guess(6) = alphabet(n);
                                for o = 1:alphasize(2);
                                    %counter = counter + 1;
                                    guess(7) = alphabet(o);
                                    for p = 1:alphasize(2)
                                        counter = counter + 1;
                                        guess(8) = alphabet(p);
                                        if strcmp(guess, realpass) == 1
                                            break
                                        end %ends if
                                    end % ends for(p)
                                    if strcmp(guess, realpass) == 1
                                        break
                                    end %ends if
                                end %ends for(o)
                                if strcmp(guess, realpass) == 1
                                    break
                                end %ends if
                            end %ends for(n)
                            if strcmp(guess, realpass) == 1
                                break
                            end %ends if
                        end %ends for(m)
                        if strcmp(guess, realpass) == 1
                            break
                        end %ends if
                    end %ends for(l)
                    if strcmp(guess, realpass) == 1
                        break
                    end %ends if
                end %ends for(k)
                if strcmp(guess, realpass) == 1
                    break
                end %ends if
            end %ends for(j)
            if strcmp(guess, realpass) == 1
                break
            end %ends if
        end %ends for(i)
    end %ends if strcmp(guess, ...
    
    
end %ends while

bclock = clock;

%% Display Results

set(handles.text3, 'String', ['Got it.  The password is "', guess, '".']);
if counter == 1
    set(handles.text8, 'String', ['It took ', num2str(counter), ' guess.']);
else
    set(handles.text8, 'String', ['It took ', num2str(counter), ' guesses.']);
end
elapsedT = etime(bclock, aclock);
set(handles.text9, 'String', ['It took ', num2str(elapsedT), ' seconds.']);


%toc;
