# make
# how to save output from diff versions
exercise1: exercise1.m
	# encoding=(bovw,vlad,fv)
	# category=(motorbike,aeroplane,person)
	octave -q -f exercise1.m encoding=bovw category=motorbike hellinger=F figinit=0 |tee exercise1.out
	octave -q exercise1.m encoding=bovw category=motorbike hellinger=T figinit=0 |tee -a exercise1.out
	# -a append
	# hellinger only on bovw 
	octave -q exercise1.m encoding=vlad category=motorbike hellinger=F figinit=0 |tee -a exercise1.out
	octave -q -f exercise1.m encoding=fv category=motorbike hellinger=F figinit=0 |tee -a exercise1.out

	octave -q -f exercise1.m encoding=bovw category=aeroplane hellinger=F figinit=0 |tee -a exercise1.out
	octave -q exercise1.m encoding=bovw category=aeroplane hellinger=T figinit=0 |tee -a exercise1.out
	# hellinger only on bovw 
	octave -q exercise1.m encoding=vlad category=aeroplane hellinger=F figinit=0 |tee -a exercise1.out
	octave -q -f exercise1.m encoding=fv category=aeroplane hellinger=F figinit=0 |tee -a exercise1.out

	octave -q -f exercise1.m encoding=bovw category=person hellinger=F figinit=0 |tee -a exercise1.out
	octave -q exercise1.m encoding=bovw category=person hellinger=T figinit=0 |tee -a exercise1.out
	# hellinger only on bovw 
	octave -q exercise1.m encoding=vlad category=person hellinger=F figinit=0 |tee -a exercise1.out
	octave -q -f exercise1.m encoding=fv category=person hellinger=F figinit=0 |tee -a exercise1.out

