package org.packt.human.resource.portal.model.data;
// Generated 08 7, 15 10:09:21 AM by Hibernate Tools 4.3.1

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Department generated by hbm2java
 */
@Entity
@Table(name = "department", catalog = "hrms")
public class Department implements java.io.Serializable {

	private int deptId;
	private String departmentName;
	private Set<HrmsEmployeeDetails> hrmsEmployeeDetailses = new HashSet<HrmsEmployeeDetails>(0);

	

	@Id

	@Column(name = "deptId", unique = true, nullable = false)
	public int getDeptId() {
		return this.deptId;
	}

	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}

	@Column(name = "departmentName", nullable = false, length = 45)
	public String getDepartmentName() {
		return this.departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "department")
	public Set<HrmsEmployeeDetails> getHrmsEmployeeDetailses() {
		return this.hrmsEmployeeDetailses;
	}

	public void setHrmsEmployeeDetailses(Set<HrmsEmployeeDetails> hrmsEmployeeDetailses) {
		this.hrmsEmployeeDetailses = hrmsEmployeeDetailses;
	}

}
