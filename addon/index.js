import RoxieS3fileAdapter from './adapters/roxie-s3file';
import RoxieTicketAdapter from './adapters/roxie-ticket';
import FormDataAdapterMixin from './mixins/form-data-apater';
import RoxieS3file from './models/roxie-s3file';
import RoxieTicket from './models/roxie-ticket';
import S3postService from './services/s3post';

var Roxie = {
  RoxieS3fileAdapter: RoxieS3fileAdapter,
  RoxieTicketAdapter: RoxieTicketAdapter,
  FormDataAdapterMixin: FormDataAdapterMixin,
  RoxieS3file: RoxieS3file,
  RoxieTicket: RoxieTicket,
  S3postService: S3postService
};

export default Roxie;
export {
  Roxie,
  RoxieS3fileAdapter,
  RoxieTicketAdapter,
  FormDataAdapterMixin,
  RoxieS3file,
  RoxieTicket,
  S3postService
};