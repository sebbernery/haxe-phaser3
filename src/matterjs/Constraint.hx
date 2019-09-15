package matterjs;

/**
 * @classdesc
 * The `Matter.Constraint` module contains methods for creating and manipulating constraints.
 * Constraints are used for specifying that a fixed distance must be maintained between two bodies (or a body and a fixed world-space position).
 * The stiffness of constraints can be modified to create springs or elastic.
 *
 * @class MatterJS.Constraint
 * @since 3.0.0
 */
@:native("MatterJS.Constraint")
extern class Constraint {
    public function new();
}
