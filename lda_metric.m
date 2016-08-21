function [lda_met, ind] =lda_metric(posHistograms,negHistograms)
size(posHistograms)
size(negHistograms)
% rows are instances
posMu = mean(posHistograms);
negMu = mean(negHistograms);

posScatter = var(posHistograms)*size(posHistograms,1);
negScatter = var(negHistograms)*size(negHistograms,1);

lda_met = (posMu - negMu).^2 ./ (posScatter + negScatter);
[s,ind] = sort(lda_met,'descend');
lda_met = s;


