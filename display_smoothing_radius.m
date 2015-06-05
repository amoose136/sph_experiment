function display_smoothing_radius(res,frame,tracer_radius_nn,tracer_x,tracer_y)
	% res is the 'n' in nth nearest nearbor to choose
	% 
	% frame is an attribute between 1:4999, a point in time
	% 
	% tracer_radius_nn is an 4999:4000:25 matrix  
	% 		Usage example: tracer_radius_nn((frame),(article id),(n))=distance to nth neighbor of particle id on frame
	% 
	% tracer_x is a 4999:4000 matrix of all the x positions of particles on a given frame
	% 
	% tracer_y is a 4999:4000 matrix of all the y positions of particles on a given frame

	rect=[tracer_x(frame,:)'-tracer_radius_nn(frame,:,res)', tracer_y(frame,:)'-tracer_radius_nn(frame,:,res)', 2*tracer_radius_nn(frame,:,res)', 2*tracer_radius_nn(frame,:,res)'];
	for i=1:4000
	    rectangle('Position',rect(i,:),'Curvature',[1,1]);
	    % we make circles by drawing rectangles with 100% curvature
	    hold on;
	end
	plot(tracer_x(frame,:),tracer_y(frame,:),'.')
	hold off;
end