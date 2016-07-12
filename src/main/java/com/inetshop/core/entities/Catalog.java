package com.inetshop.core.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by DVaschenko on 12.07.2016.
 */
@Entity
@Table(name = "catalog")
@SequenceGenerator(name="seq_catalog", initialValue = 56789, allocationSize = 58000)
public class Catalog {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "title")
    private String title;

    /**
     *id for a menu
     */
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "seq_catalog")
    @Column(name = "child_id")
    private int child_id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "parent_id", insertable = false, updatable = false)
    @JsonIgnore
    private Catalog parent;

    @OneToMany(fetch = FetchType.EAGER)
    @OrderColumn
    @JoinColumn(name = "parent_id")
    private List<Catalog> listItem = new ArrayList<>();

    @Embeddable
    public static class Builder{
        private String title;
        private Catalog parent;
        private List<Catalog> listItem = new ArrayList<>();

        public Builder(){}

        public Builder setTitle(String title){
            this.title = title;
            return this;
        }

        public Builder setParent(Catalog parent){
            this.parent = parent;
            return this;
        }

        public Builder setItems(List<Catalog> items){
            listItem = items;
            return this;
        }

        public Catalog build(){
            return new Catalog(this);
        }
    }

    public Catalog(Builder builder) {
        setTitle(builder.title);
        setParent(builder.parent);
        setListItem(builder.listItem);
    }

    public Catalog(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getChild_id() {
        return child_id;
    }

    public void setChild_id(int child_id) {
        this.child_id = child_id;
    }

    public Catalog getParent() {
        return parent;
    }

    public void setParent(Catalog parent) {
        this.parent = parent;
    }

    public List<Catalog> getListItem() {
        return listItem;
    }

    public void setListItem(List<Catalog> listItem) {
        this.listItem = listItem;
    }
}
