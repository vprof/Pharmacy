<?php

declare(strict_types = 1);

namespace Sop\ASN1\Feature;

use Sop\ASN1\Element;
use Sop\ASN1\Type\TaggedType;
use Sop\ASN1\Type\UnspecifiedType;

/**
 * Base interface for ASN.1 type elements.
 */
interface ElementBase extends Encodable
{
    /**
     * Get the class of the ASN.1 type.
     *
     * One of `Identifier::CLASS_*` constants.
     *
     * @return int
     */
    public function typeClass(): int;

    /**
     * Check whether the element is constructed.
     *
     * Otherwise it's primitive.
     *
     * @return bool
     */
    public function isConstructed(): bool;

    /**
     * Get the tag of the element.
     *
     * Interpretation of the tag depends on the context. For example it may
     * represent a universal type tag or a tag of an implicitly or explicitly
     * tagged type.
     *
     * @return int
     */
    public function tag(): int;

    /**
     * Check whether the element is a type of a given tag.
     *
     * @param int $tag Type tag
     *
     * @return bool
     */
    public function isType(int $tag): bool;

    /**
     * Check whether the element is a type of a given tag.
     *
     * Throws an exception if expectation fails.
     *
     * @param int $tag Type tag
     *
     * @throws \UnexpectedValueException If the element type differs from the expected
     *
     * @return ElementBase
     */
    public function expectType(int $tag): ElementBase;

    /**
     * Check whether the element is tagged (context specific).
     *
     * @return bool
     */
    public function isTagged(): bool;

    /**
     * Check whether the element is tagged (context specific) and optionally has
     * a given tag.
     *
     * Throws an exception if the element is not tagged or tag differs from
     * the expected.
     *
     * @param null|int $tag Optional type tag
     *
     * @throws \UnexpectedValueException If expectation fails
     *
     * @return TaggedType
     */
    public function expectTagged(?int $tag = null): TaggedType;

    /**
     * Get the object as an abstract `Element` instance.
     *
     * @return Element
     */
    public function asElement(): Element;

    /**
     * Get the object as an `UnspecifiedType` instance.
     *
     * @return UnspecifiedType
     */
    public function asUnspecified(): UnspecifiedType;
}
