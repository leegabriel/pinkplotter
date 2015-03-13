function varargout = Monthlist(varargin)
% MONTHLIST MATLAB code for Monthlist.fig
%      MONTHLIST, by itself, creates a new MONTHLIST or raises the existing
%      singleton*.
%
%      H = MONTHLIST returns the handle to a new MONTHLIST or the handle to
%      the existing singleton*.
%
%      MONTHLIST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MONTHLIST.M with the given input arguments.
%
%      MONTHLIST('Property','Value',...) creates a new MONTHLIST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Monthlist_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Monthlist_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Monthlist

% Last Modified by GUIDE v2.5 13-Mar-2015 00:40:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Monthlist_OpeningFcn, ...
                   'gui_OutputFcn',  @Monthlist_OutputFcn, ...
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


% --- Executes just before Monthlist is made visible.
function Monthlist_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Monthlist (see VARARGIN)

% Choose default command line output for Monthlist
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Monthlist wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Monthlist_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Jan_PushButton.
function Jan_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Jan_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('projectData.mat')
janYearlyb=projectData(149:12:422,1);


c = length(janYearlyb);
c=1:c;


plot(c,janYearlyb,'k')
title('All Commodity Price Index, Month: January, Years: 1992 - 2015', ...
    'FontSize',15)
xlabel('Years','FontSize',15)
ylabel('Index Number', 'FontSize', 15)

set(gca,'XTick', 1:24, 'XTickLabel',{'1992','1993','1994','1995','1996', ...
    '1997','1998','1999','2000','2001','2002','2003','2004','2005', ...
    '2006','2007','2008','2009','2010','2011','2012','2013', ...
    '2014','2015'})
xticklabel_rotate
    


% --- Executes on button press in May_PushButton.
function May_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to May_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('projectData.mat')
mayYearlyb=projectData(153:12:422,1);
c = length(mayYearlyb);
c=1:c;

plot(c,mayYearlyb,'k')
title('All Commodity Price Index, Month: May, Years: 1992 - 2014', ...
    'FontSize',15)
xlabel('Years','FontSize',15)
ylabel('Index Number', 'FontSize', 15)

set(gca,'XTick', 1:23, 'XTickLabel',{'1992','1993','1994','1995','1996', ...
    '1997','1998','1999','2000','2001','2002','2003','2004','2005', ...
    '2006','2007','2008','2009','2010','2011','2012','2013', ...
    '2014'})
xticklabel_rotate
% --- Executes on button press in Sept_PushButton.
function Sept_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Sept_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('projectData.mat')
sepYearlyb=projectData(157:12:422,1);
c = length(sepYearlyb);
c=1:c;

plot(c,sepYearlyb,'k')
title('All Commodity Price Index, Month: September, Years: 1992 - 2014', ...
    'FontSize',15)
xlabel('Years','FontSize',15)
ylabel('Index Number', 'FontSize', 15)

set(gca,'XTick', 1:23, 'XTickLabel',{'1992','1993','1994','1995','1996', ...
    '1997','1998','1999','2000','2001','2002','2003','2004','2005', ...
    '2006','2007','2008','2009','2010','2011','2012','2013', ...
    '2014'})
xticklabel_rotate

% --- Executes on button press in Oct_PushButton.
function Oct_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Oct_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('projectData.mat')
octYearlyb=projectData(158:12:422,1);
c = length(octYearlyb);
c=1:c;

plot(c,octYearlyb,'k')
title('All Commodity Price Index, Month: October, Years: 1992 - 2014', ...
    'FontSize',15)
xlabel('Years','FontSize',15)
ylabel('Index Number', 'FontSize', 15)

set(gca,'XTick', 1:23, 'XTickLabel',{'1992','1993','1994','1995','1996', ...
    '1997','1998','1999','2000','2001','2002','2003','2004','2005', ...
    '2006','2007','2008','2009','2010','2011','2012','2013', ...
    '2014'})
xticklabel_rotate

% --- Executes on button press in June_PushButton.
function June_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to June_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('projectData.mat')
junYearlyb=projectData(154:12:422,1);
c = length(junYearlyb);
c=1:c;

plot(c,junYearlyb,'k')
title('All Commodity Price Index, Month: June, Years: 1992 - 2014', ...
    'FontSize',15)
xlabel('Years','FontSize',15)
ylabel('Index Number', 'FontSize', 15)

set(gca,'XTick', 1:23, 'XTickLabel',{'1992','1993','1994','1995','1996', ...
    '1997','1998','1999','2000','2001','2002','2003','2004','2005', ...
    '2006','2007','2008','2009','2010','2011','2012','2013', ...
    '2014'})
xticklabel_rotate
% --- Executes on button press in Feb_PUshButton.
function Feb_PUshButton_Callback(hObject, eventdata, handles)
% hObject    handle to Feb_PUshButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('projectData.mat')
febYearlyb=projectData(150:12:422,1);
c = length(febYearlyb);
c=1:c;

plot(c,febYearlyb,'k')
title('All Commodity Price Index, Month: February, Years: 1992 - 2015', ...
    'FontSize',15)
xlabel('Years','FontSize',15)
ylabel('Index Number', 'FontSize', 15)

set(gca,'XTick', 1:24, 'XTickLabel',{'1992','1993','1994','1995','1996', ...
    '1997','1998','1999','2000','2001','2002','2003','2004','2005', ...
    '2006','2007','2008','2009','2010','2011','2012','2013', ...
    '2014','2015'})
xticklabel_rotate
% --- Executes on button press in Nov_PushButton.
function Nov_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Nov_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('projectData.mat')
novYearlyb=projectData(159:12:422,1);
c = length(novYearlyb);
c=1:c;

plot(c,novYearlyb,'k')
title('All Commodity Price Index, Month: November, Years: 1992 - 2014', ...
    'FontSize',15)
xlabel('Years','FontSize',15)
ylabel('Index Number', 'FontSize', 15)

set(gca,'XTick', 1:23, 'XTickLabel',{'1992','1993','1994','1995','1996', ...
    '1997','1998','1999','2000','2001','2002','2003','2004','2005', ...
    '2006','2007','2008','2009','2010','2011','2012','2013', ...
    '2014'})
xticklabel_rotate
% --- Executes on button press in July_PushButton.
function July_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to July_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('projectData.mat')
julYearlyb=projectData(155:12:422,1);
c = length(julYearlyb);
c=1:c;

plot(c,julYearlyb,'k')
title('All Commodity Price Index, Month: July, Years: 1992 - 2014', ...
    'FontSize',15)
xlabel('Years','FontSize',15)
ylabel('Index Number', 'FontSize', 15)

set(gca,'XTick', 1:23, 'XTickLabel',{'1992','1993','1994','1995','1996', ...
    '1997','1998','1999','2000','2001','2002','2003','2004','2005', ...
    '2006','2007','2008','2009','2010','2011','2012','2013', ...
    '2014'})
xticklabel_rotate
% --- Executes on button press in March_PushButton.
function March_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to March_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('projectData.mat')
marYearlyb=projectData(151:12:422,1);
c = length(marYearlyb);
c=1:c;

plot(c,marYearlyb,'k')
title('All Commodity Price Index, Month: March, Years: 1992 - 2014', ...
    'FontSize',15)
xlabel('Years','FontSize',15)
ylabel('Index Number', 'FontSize', 15)

set(gca,'XTick', 1:23, 'XTickLabel',{'1992','1993','1994','1995','1996', ...
    '1997','1998','1999','2000','2001','2002','2003','2004','2005', ...
    '2006','2007','2008','2009','2010','2011','2012','2013', ...
    '2014'})
xticklabel_rotate
% --- Executes on button press in Dec_PushButton.
function Dec_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Dec_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('projectData.mat')
decYearlyb=projectData(160:12:422,1);
c = length(decYearlyb);
c=1:c;

plot(c,decYearlyb,'k')
title('All Commodity Price Index, Month: December, Years: 1992 - 2014', ...
    'FontSize',15)
xlabel('Years','FontSize',15)
ylabel('Index Number', 'FontSize', 15)

set(gca,'XTick', 1:23, 'XTickLabel',{'1992','1993','1994','1995','1996', ...
    '1997','1998','1999','2000','2001','2002','2003','2004','2005', ...
    '2006','2007','2008','2009','2010','2011','2012','2013', ...
    '2014'})
xticklabel_rotate
% --- Executes on button press in Aug_PushButton.
function Aug_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Aug_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('projectData.mat')
augYearlyb=projectData(156:12:422,1);
c = length(augYearlyb);
c=1:c;

plot(c,augYearlyb,'k')
title('All Commodity Price Index, Month: August, Years: 1992 - 2014', ...
    'FontSize',15)
xlabel('Years','FontSize',15)
ylabel('Index Number', 'FontSize', 15)

set(gca,'XTick', 1:23, 'XTickLabel',{'1992','1993','1994','1995','1996', ...
    '1997','1998','1999','2000','2001','2002','2003','2004','2005', ...
    '2006','2007','2008','2009','2010','2011','2012','2013', ...
    '2014'})
xticklabel_rotate
% --- Executes on button press in April_PushButton.
function April_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to April_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('projectData.mat')
aprYearlyb=projectData(152:12:422,1);
c = length(aprYearlyb);
c=1:c;

plot(c,aprYearlyb,'k')
title('All Commodity Price Index, Month: April, Years: 1992 - 2014', ...
    'FontSize',15)
xlabel('Years','FontSize',15)
ylabel('Index Number', 'FontSize', 15)

set(gca,'XTick', 1:23, 'XTickLabel',{'1992','1993','1994','1995','1996', ...
    '1997','1998','1999','2000','2001','2002','2003','2004','2005', ...
    '2006','2007','2008','2009','2010','2011','2012','2013', ...
    '2014'})
xticklabel_rotate
