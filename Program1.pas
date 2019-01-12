var i1, i2: array [1..4] of integer;
	k1, k2, max, i, j, t, m, f:integer;
begin
	max := 0;
	i1[1] := 1;
	i1[2] := 2;
	i1[3] := 6;
	i1[4] := 35;
	i2[1] := 7;
	i2[2] := 1;
	i2[3] := 8;
	i2[4] := 52;
	t := 17;
	m := 8;
	f := 32;
	for i := 0 to 4 do
		for j := 0 to 2 do
		if (((t - i1[1]*i - i2[1]*j) >= 0) and ((m - i1[2]*i - i2[2]*j) >= 0) and ((f - i1[3]*i - i2[3]*j) >= 0)) then
		if ((i1[4]*i + i2[4]*j) > max) then
		begin
			max := i1[4]*i + i2[4]*j;
			k1 := i;
			k2 := j;
		end;
	write(max, ' ', k1, ' ', k2, ' ', 0, ' ', 0);
end.