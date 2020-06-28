package backend.app.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonView;

import backend.app.utils.ViewUtils.ShowKorisnickaDozvola;

@Entity
public class RegistrovaniKorisnik {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;

	@Column(length=128, nullable = false, unique = true)
	private String username;

	@Column(length=128, nullable = false)
	private String lozinka;

	@Column(length=128, nullable = false)
	private String email;

	@JsonView(ShowKorisnickaDozvola.class)
	@OneToMany(mappedBy = "registrovaniKorisnik", cascade = CascadeType.ALL)
	private Set<KorisnickaDozvola> korisnickaDozvola;
	
	public RegistrovaniKorisnik() {}

	public RegistrovaniKorisnik(String username, String lozinka, String email, Set<KorisnickaDozvola> korisnickaDozvola) {
		super();
		this.username = username;
		this.lozinka = lozinka;
		this.email = email;
		this.korisnickaDozvola = korisnickaDozvola;
	}

	public Long getId(){
		return id;
	}

	public void setId(Long id){
		this.id = id;
	}
	
	public String getUsername(){
		return username;
	}

	public void setUsername(String username){
		this.username = username;
	}
	
	public String getLozinka(){
		return lozinka;
	}

	public void setLozinka(String lozinka){
		this.lozinka = lozinka;
	}
	
	public String getEmail(){
		return email;
	}

	public void setEmail(String email){
		this.email = email;
	}

	public Set<KorisnickaDozvola> getKorisnickaDozvola() {
		return korisnickaDozvola;
	}

	public void setKorisnickaDozvola(Set<KorisnickaDozvola> korisnickaDozvola) {
		this.korisnickaDozvola = korisnickaDozvola;
	}

}