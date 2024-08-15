variable "zone_id" {
  default     = null
  type        = string
  description = "The ID of the hosted zone to contain this record"
}

variable "name" {
  default     = null
  type        = string
  description = "The name of the record"
}

variable "type" {
  default     = null
  type        = string
  description = "The type of the record.Valid values are A, AAAA, CAA, CNAME, MX, NAPTR, NS, PTR, SOA, SPF, SRV, TXT, and HINFO"
}

variable "records" {
  default     = null
  type        = list(string)
  description = "A list of records"
}

variable "ttl" {
  default     = 300
  type        = number
  description = "The TTL of the record"
}

variable "create_record_route53" {
  description = "Create a record in Route53"
  type        = bool
  default     = false
}