function [T_flame, gamma, m_mol, R,c_star] = thermochem(OF,etac)


%changes


T_flame = 3300;     %[K] should be determined properly
gamma = 1.24;       %    should be determined properly
m_mol = 0.0262109;  %Molar mass (kg/mol) should be determined properly
R = 8.314/m_mol;    %Specific Gas Constant [SPAD, eq 7 .72]
%etac is the combustion efficiency, usually about 0.95 [SPAD]
c_star = etac*sqrt(gamma*R*T_flame)/(gamma*(2/(gamma+1))^((gamma+1)/(2*gamma-2))); %characteristic velocity [SPAD, eq 7.71]

end
