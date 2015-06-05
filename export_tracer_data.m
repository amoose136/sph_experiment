function filename=export_tracer_data(tracer_x,tracer_y,density,tracer_radius,M_tracer,p_notpns)
maxp=4999;
i=1
	strName='';
	for j=1:4-(floor(log10(i))+1)
		strName=strcat(strName,'0');
	end
	filename=strcat('smooth_',strName,int2str(i))
	filecontents=[tracer_x(i,p_notpns{i});tracer_y(i,p_notpns{i});density(i,p_notpns{i});tracer_radius(i,p_notpns{i})*3;repmat(M_tracer,[1,length(p_notpns{i})]);repmat(0,[1,length(p_notpns{i})])]';
	filecontents=[filecontents;[tracer_x(i,p_notpns{i});tracer_y(i,p_notpns{i})*-1;density(i,p_notpns{i});tracer_radius(i,p_notpns{i})*3;repmat(M_tracer,[1,length(p_notpns{i})]);repmat(0,[1,length(p_notpns{i})])]'];
	% filecontents=[tracer_x;tracer_y;density(:);tracer_radius(:)*3;repmat(M_tracer,[1,4000])]';
	dlmwrite(filename,filecontents,'\t');
end