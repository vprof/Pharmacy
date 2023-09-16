<?php

declare(strict_types = 1);

namespace Sop\ASN1\Type\Primitive;

use Sop\ASN1\Type\PrimitiveString;
use Sop\ASN1\Type\UniversalClass;

/**
 * Implements *OCTET STRING* type.
 */
class OctetString extends PrimitiveString
{
    use UniversalClass;

    /**
     * Constructor.
     *
     * @param string $string
     */
    public function __construct(string $string)
    {
        $this->_typeTag = self::TYPE_OCTET_STRING;
        parent::__construct($string);
    }
}
