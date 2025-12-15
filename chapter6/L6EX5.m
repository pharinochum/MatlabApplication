% NAME: CHUM Pharino
% DATE: 21-07-2025

% Example 5: sum of series
% Sigma (-1)^k * k/(2^k)

while true
  S = 0; % sum of the series
  n = input('What is the value of N?');

  for k = 1:n
    S = S + ((-1)^k)*k/(2^k);
  end
  fprintf('>> Total value of series is %.4f20\n',S);

  % wait for 'q' to quite
  ch = input('Press ENTER to continue and Q to quit: ');
  if ch == 'q'
    break;
  endif
end




