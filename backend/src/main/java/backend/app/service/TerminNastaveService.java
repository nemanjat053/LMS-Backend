package backend.app.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import backend.app.model.TerminNastave;

import backend.app.repository.TerminNastaveRepository;

@Service
public class TerminNastaveService {

	@Autowired
    private TerminNastaveRepository terminNastaveRepo;

    public TerminNastaveService() {
    }

    public Iterable<TerminNastave> getTerminNastave() {
        return terminNastaveRepo.findAll();
    }
    
    public Iterable<Optional<TerminNastave>> getTerminNastaveByGodinaStudija(Long godinaStudijaId) {
        return terminNastaveRepo.getByGodinaStudija(godinaStudijaId);
    }

    public Optional<TerminNastave> getTerminNastaveById(Long id) {
        return terminNastaveRepo.findById(id);
    }
	public void addTerminNastave(TerminNastave terminNastave) {
		terminNastaveRepo.save(terminNastave);
	}
	
    public void removeTerminNastave(Long id) {
        Optional<TerminNastave> terminNastave = terminNastaveRepo.findById(id);
        TerminNastave t = terminNastave.get();
        t.setObrisan(true);
        terminNastaveRepo.save(t);
    }

	public void updateTerminNastave(Long id, TerminNastave terminNastave) {
		Optional<TerminNastave> terminNastavee = terminNastaveRepo.findById(id);
		if(terminNastavee.isPresent()) {
			terminNastave.setId(terminNastavee.get().getId());
			terminNastaveRepo.save(terminNastave);
		}
	}

    

}
