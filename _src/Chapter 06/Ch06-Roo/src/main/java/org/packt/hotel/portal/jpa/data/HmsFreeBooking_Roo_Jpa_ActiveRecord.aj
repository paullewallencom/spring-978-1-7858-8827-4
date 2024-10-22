// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.packt.hotel.portal.jpa.data;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.packt.hotel.portal.jpa.data.HmsFreeBooking;
import org.springframework.transaction.annotation.Transactional;

privileged aspect HmsFreeBooking_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager HmsFreeBooking.entityManager;
    
    public static final List<String> HmsFreeBooking.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager HmsFreeBooking.entityManager() {
        EntityManager em = new HmsFreeBooking().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long HmsFreeBooking.countHmsFreeBookings() {
        return entityManager().createQuery("SELECT COUNT(o) FROM HmsFreeBooking o", Long.class).getSingleResult();
    }
    
    public static List<HmsFreeBooking> HmsFreeBooking.findAllHmsFreeBookings() {
        return entityManager().createQuery("SELECT o FROM HmsFreeBooking o", HmsFreeBooking.class).getResultList();
    }
    
    public static List<HmsFreeBooking> HmsFreeBooking.findAllHmsFreeBookings(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM HmsFreeBooking o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, HmsFreeBooking.class).getResultList();
    }
    
    public static HmsFreeBooking HmsFreeBooking.findHmsFreeBooking(Long id) {
        if (id == null) return null;
        return entityManager().find(HmsFreeBooking.class, id);
    }
    
    public static List<HmsFreeBooking> HmsFreeBooking.findHmsFreeBookingEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM HmsFreeBooking o", HmsFreeBooking.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<HmsFreeBooking> HmsFreeBooking.findHmsFreeBookingEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM HmsFreeBooking o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, HmsFreeBooking.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void HmsFreeBooking.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void HmsFreeBooking.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            HmsFreeBooking attached = HmsFreeBooking.findHmsFreeBooking(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void HmsFreeBooking.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void HmsFreeBooking.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public HmsFreeBooking HmsFreeBooking.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        HmsFreeBooking merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
