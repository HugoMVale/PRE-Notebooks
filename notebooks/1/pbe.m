close all;

% Parameters
tend = 60; %0.02
k = 1.;
CM = 1.;

% Initial distribution
nmax = 120;
i0 = 10; %100
iwidth = 10;
x = 1:nmax;
P0 = zeros(1, nmax);
P0(i0:i0+iwidth) = 1;

% Select PBE to solve
ode = @(t,y) ode_propagation(t, y, k, CM);
%ode = @(t,y) ode_depropagation(t, y, k);
%ode = @(t,y) ode_scission(t, y, k);
%ode = @(t,y) ode_combination(t, y, k);

% Call ODE solver
tspan = linspace(0, tend, 100);
options = odeset('RelTol', 1e-5);
[t, P] = ode45(ode, tspan, P0, options);

% Plot distribution
figure(1)
for i=1:round(length(t)/10):length(t)
    label = sprintf("t=%f", t(i));
    plot(x, P(i,:), 'DisplayName', label)
    hold on
end
xlabel('Chain length')
ylabel('Number of chains')

% Plot moments
figure(2);
for i=0:2
    subplot(3,1,i+1);
    moment = moment_numerical(i, P, x);
    plot(t, moment)
    hold on
    ylabel(['\lambda' int2str(i)])
end
xlabel('Time')


%% Functions

% Numerical moment of distribution P(n)
function moment = moment_numerical(order, P, x)
    moment = sum(P.*(x.^order), 2);
end

% Propagation
% P(n) + M -> P(n+1)
function Pdot = ode_propagation(~, P, k, CM)
    Pleft = zeros(size(P));
    Pleft(2:end) = P(1:end-1);
    Pdot = k*CM*(Pleft - P);
end

% Depropagation
% P(n) -> P(n-1) + M
function Pdot = ode_depropagation(~, P, k)
    Pright = zeros(size(P));
    Pright(1:end-1) = P(2:end);
    Pdot = k*(Pright - P);
end

% Scission
% P(n) -> P(n-m) + P(m)
function Pdot = ode_scission(~, P, k) 
    % Source term
    % Pplus = zeros(size(P));
    % for n = 1:length(Pplus)-1
    %   Pplus(n) = sum(P(n+1:end));
    % end
    Pplus = [flip(cumsum(flip(P(2:end)))); 0];
    Pplus = Pplus*2;
    % Sink term
    x = 1:length(P);
    Pminus = (x' - 1).*P;
    % Net result
    Pdot = k*(Pplus - Pminus);
end

% Combination
% P(n) + P(m) -> P(n+m)
function Pdot = ode_combination(~, P, k)
    % Source term
    Pplus = zeros(size(P));
    for n = 2:length(P)
        Pplus(n) = 0.5*sum(P(1:n-1).*P(n-1:-1:1));
    end
     % Sink term
    Pminus = P*sum(P);
    % Net result
    Pdot = k*(Pplus - Pminus);
end
