function density=compute_density_from_smoothing_length(tracer_radius_nn, M_tracer, tracer_y,res)
%   returns the density as found from geometry with constant mass.
		for i=1:4000 %loop through all particles (on every frame denoted by the ':')
      		density(:,i)=M_tracer./(tracer_radius_nn(:, i, res).^2*2*pi()^2.*tracer_y(i));
  		end
end