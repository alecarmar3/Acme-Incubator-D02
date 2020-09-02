
package acme.entities;

import javax.persistence.Entity;
import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.URL;

import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Record extends DomainEntity {

	private static final long	serialVersionUID	= 1L;

	@NotBlank
	@Length(max = 250)
	private String				title;

	@NotBlank
	private String				activitySector;

	@NotBlank
	@Length(max = 250)
	private String				inventorName;

	@NotBlank
	@Length(max = 250)
	private String				description;

	@NotBlank
	@URL
	@Length(max = 250)
	private String				website;

	@NotBlank
	@Email
	@Length(max = 250)
	private String				email;

	@NotNull
	private SourceType			sourceType;

	@NotNull
	@Min(-5)
	@Max(5)
	private Integer				stars;

}
