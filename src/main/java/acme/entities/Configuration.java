
package acme.entities;

import javax.persistence.Entity;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotBlank;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.Range;

import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Configuration extends DomainEntity {

	private static final long	serialVersionUID	= 1L;

	@NotBlank
	@Length(max = 250)
	private String				spamWords;

	@Range(min = 0, max = 1)
	@Digits(integer = 1, fraction = 3)
	private Double				spamThreshold;

	@NotBlank
	@Length(max = 250)
	private String				activitySectors;

}
